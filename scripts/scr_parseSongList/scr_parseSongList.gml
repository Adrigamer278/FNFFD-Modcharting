function scr_parseAsset(assetData,directory) {
	
	if directory = undefined {
		directory = working_directory
	}
	
	var frameRate = 24
	var stframe = 0
	var endFrame = 0
		
	var sprData = string_split(assetData,":");
	var sprName = array_length(sprData) > 0 ? array_get(sprData,0) : ""
	
	show_debug_message(sprName)
		
	if array_length(sprData) > 1 {
			
		var frameData = string_split(sprData[1],"-");
		stframe = array_length(frameData) > 0 ? array_get(frameData,0) : 0;
		endFrame = array_length(frameData) > 1 ? array_get(frameData,1) : stframe;
		frameRate = array_length(frameData) > 2 ? array_get(frameData,2) : 24;
	}
			
	if string_count(".",sprName) > 0 {
		
		show_debug_message(directory+"/images/icons/"+sprName)
		assetData = [
			sprite_add(directory+"/images/icons/"+sprName,1,false,false,0,0),
			stframe,
			endFrame,
			frameRate,
			!(stframe = endFrame)
		]
	} else {
		assetData = [
			asset_get_index(sprName),
			stframe,
			endFrame,
			frameRate,
			!(stframe = endFrame)
		]
	}
	
	return assetData
}

function scr_parseSongList(directory){
	var songList = []
	var sel = 0
	
	var songFile = file_text_open_read(directory + "/freeplay-list.txt");
	var songsOnWknd = array_create(100,0); // max 100 wknds per category (who gonna fill it all ?)
	var highestWknd = 0;
	var songExtraData = {};
	
	var songsByIndex = [];
	
	var weeksReal = [];

	while (!file_text_eof(songFile)) {
		var contentData = file_text_read_string(songFile);
	
		if string_trim(contentData) == "_startSelection" {
			sel = array_length(songList);
			continue;
		}
	
		if string_trim(contentData) == "_notEnter" {
			songExtraData.blockEnter = true
			continue;
		}
	
		if string_trim(contentData) == "_misplaced" {
			songExtraData.misplaced = true
			continue;
		}
		//comments
		if string_starts_with(contentData,"--") or string_starts_with(contentData,"//") or string_trim(contentData) == "" {
			file_text_readln(songFile);
			continue;
		}
	
		var arrayData = string_split(contentData,"/",false,3);
	
		var songName = array_length(arrayData) > 0 ? array_get(arrayData,0) : "";
		var iconData = array_length(arrayData) > 1 ? array_get(arrayData,1) : undefined;
		var weekData = array_length(arrayData) > 2 ? array_get(arrayData,2) : undefined
	
		if iconData != undefined {
			iconData = scr_parseAsset(iconData,directory)
		} else {
			iconData = [
				spr_freeplayicons,
				0,
				0,
				24,
				false
			]
		}
	
		if weekData != undefined {
			var wkndData = string_split(weekData,":");
		
			var wkndNum = array_length(wkndData) > 0 ? array_get(wkndData,0) : 0;
			var isLocked = array_length(wkndData) > 1 ? array_get(wkndData,1) : false;
		
			var weekPos = 0;
			
			if !(isLocked = "true") {
				weekPos = array_length(songsOnWknd) > wkndNum ? array_get(songsOnWknd,wkndNum) : 0;
				weekPos = weekPos + 1
				array_set(songsOnWknd,wkndNum,weekPos);
			}
			
			if real(wkndNum) > highestWknd {
				highestWknd = real(wkndNum)
			}
		
			weekData = [
				real(wkndNum),
				weekPos,
				isLocked = "true" ? true : false
			]
		} else {
		
			var weekPos = array_length(songsOnWknd) > 0 ? array_get(songsOnWknd,0) : 0;
			weekPos = weekPos + 1
			array_set(songsOnWknd,0,weekPos);
		
			weekData = [
				0, // weeknd 0
				weekPos, // week pos
				false // is blocked? (until wnd beat)
			]
		}
		
		array_insert(songsByIndex,array_length(songsByIndex),songName)
		
		var songSt = [
			songName,
			{
				score:0,
				accuracy:0,
				misses:0,
				timesPlayed:0,
				locked:weekData[2],
				isNew: false,
				beat: false,
			},
			weekData,
			
			//freeplay stuff
			iconData,
			{
				disableWeekUnlock: false, //makes the lock not go away when beating a week
				misplaced: variable_struct_exists(songExtraData,"misplaced") ? songExtraData.misplaced : false,
				blockEnter: variable_struct_exists(songExtraData,"blockEnter") ? songExtraData.blockEnter : false
			},
		]
	
		array_insert(songList,array_length(songList),songSt)
	
		songExtraData = {}
	
	    file_text_readln(songFile);
	}

	file_text_close(songFile);
	
	for (i=0;i<=highestWknd;i++) {
		
		// try to sort weeks and songs...
		// i hate that you cant safely know if an index is empty
		var wkSongs = []
		
		for (sI=0;sI<array_length(songList);sI++) {
			if songList[sI][2][0] == i & !songList[sI][1].locked {
				array_push(wkSongs,songList[sI])
			}
		}
		
		array_sort(wkSongs,function(elm1, elm2) {
			return elm1[2][1] - elm2[2][1];
		})
		
		array_push(weeksReal,{
			songs: wkSongs,
			timesPlayed: 0,
			beat: false
		})
	}
	
	var weekFile = file_text_open_read(directory + "/week-list.txt");
	
	var weeksData = []
	
	while (!file_text_eof(weekFile)) {
		var contentData = file_text_read_string(weekFile)
		
		if string_starts_with(contentData,"--") or string_starts_with(contentData,"//") or string_trim(contentData) == "" {
			file_text_readln(songFile);
			continue;
		}
		
		var data = string_split(contentData,"/",false,5)
		var wkndNum = array_length(data)>0 ? real(array_get(data,0)) : undefined
		if wkndNum == undefined || wkndNum>highestWknd {
			continue;
		}
		
		var songListBefore = []
		var songListAfter = []
		var assetsListBefore = []
		var assetsListAfter = []
		
		var difficulty = array_length(data)>3 ? array_get(data,3) : "normal"
		var name = array_length(data)>4 ? array_get(data,4) : "WEEKND " + string(wkndNum)
		var color = array_length(data)>5 ? array_get(data,5) : undefined
		
		var realSongList = string_split(array_length(data)>1 ? array_get(data,1) : "","?",false,2)
		if array_length(realSongList) > 1 {
			var fullList = string_split(array_get(realSongList,1),"|",false,2)
			realSongList = string_split(array_get(realSongList,0),":",false)
		
			songListBefore = string_split(array_length(fullList)>0 ? array_get(fullList,0) : "",":",false)
			songListAfter = string_split(array_length(fullList)>1 ? array_get(fullList,1) : (array_length(fullList)>0 ? array_get(fullList,0) : ""),":",false)
		} else {
			realSongList = string_split(array_length(data)>1 ? array_get(data,1) : "",":",false)
			songListBefore = realSongList;
			songListAfter = realSongList
		}
		

		var fullAssetsList = string_split(array_length(data)>2 ? array_get(data,2) : "","|",false,2)
		var prevAssets = array_length(fullAssetsList)>0 ? string_split(array_get(fullAssetsList,0),"&",false) : []
		var afterAssets = array_length(fullAssetsList)>1 ? string_split(array_get(fullAssetsList,1),"&",false) : prevAssets
		
		for (l=0;l<=1;l++) {
			var listParsing = l=0 ? prevAssets : afterAssets
			var destiny = l=0 ? assetsListBefore : assetsListAfter
			for (i=0;i<array_length(listParsing);i++) {
				array_push(destiny,scr_parseAsset(listParsing[i],directory))
			}
		}

		show_debug_message(songListBefore)	
		show_debug_message(songListAfter)	
		
		show_debug_message(assetsListBefore)	
		show_debug_message(assetsListAfter)	
		
		array_push(weeksData,{
			wknd:wkndNum,
			songs: realSongList,
			dispSongs: [songListBefore,songListAfter],
			assets: [assetsListBefore,assetsListAfter],
			difficulty: difficulty,
			name: name,
			color: color
		})
		
		file_text_readln(songFile);
	}
	
	array_sort(weeksData,function(elm1, elm2) {
		return elm1.wknd - elm2.wknd;
	})
	
	file_text_close(weekFile);
	
	return {
		songs:songList,
		weeks:weeksReal,
		weekMenuData:weeksData,
		songsNameIndex:songsByIndex,
		weekAmmo:highestWknd,
		selection:sel
	}
}