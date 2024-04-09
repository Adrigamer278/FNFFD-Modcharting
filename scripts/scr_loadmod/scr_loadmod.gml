function scr_makeasset(data,directory) {
	if directory == undefined {
		directory = working_directory;
	}
	
	var spr;
	if string_count(".",data.spr) > 0 {
		spr = sprite_add(directory+"/"+data.spr,1,false,false,0,0);
	} else {
		spr = asset_get_index(data.spr);
	}
	
	if spr<=-1 { spr= spr_dudeidlereal }
	
	return {
		spr: spr,
		frame: variable_struct_get(data,"frame") ? data.frame : 0
	}
}

function scr_loadmod(directory) { // prob will change func name because this also loads main game lol
	var songs = [];
	var weeknds = [];
	
	var songsName = [];
	
	var fpSongs = [];
	var fpsel = 0;
	
	var menuWknds = [];
	
	var songList = scr_jsonparse(directory + "/songs.json");
	
	if songList != undefined {
		for (songind=0; songind<array_length(songList); songind++) {
			var songData = songList[songind];
			
			if variable_struct_get(songData,"selected")==true && !variable_struct_get(songData,"hide") {
				fpsel=array_length(fpSongs);
			}
			
			var song = {
				name: songData.name,
				displayName: variable_struct_get(songData,"displayName")!=undefined ? songData.displayName : songData.name,
				 
				chart: variable_struct_get(songData,"chart")!=undefined ? directory+"/"+songData.chart : directory+"/songs/"+songData.name+"/chart.swows",
				
				stats: {
					score: 0,
					accuracy: 0,
					misses: 0,
					timesPlayed: 0,
					locked: variable_struct_get(songData,"locked")==true,
					isNew: false,
					beat: false,
				},
				
				// freeplay things
				freeplayIcon: scr_makeasset(variable_struct_get(songData,"freeplayIcon")!=undefined ? songData.freeplayIcon : {spr:"spr_freeplayicons",frame:5},directory),
				misplaced: variable_struct_get(songData,"misplaced")==true, //haha funny sound effect
				noEnter: variable_struct_get(songData,"noEnter")==true, // literally the name
			
				hide: variable_struct_get(songData,"hide")==true,
			}
			
			if variable_struct_get(songData,"song")!=undefined {
				var musFile
				if string_count(".",songData.song) > 0 { // has .ogg or smth
					if file_exists(directory+"/"+songData.song) {
						musFile = audio_create_stream(directory+"/"+songData.song);
					}
				} else { // its an asset
					musFile = asset_get_index(songData.song);
				}
				
				song.song = musFile;
			} else {
				var musFile
				var muspath = directory+"/songs/"+songData.name+"/song.ogg";
				if file_exists(muspath) {
					musFile = audio_create_stream(muspath);
				}
				
				song.song = musFile;
			}
			
			if variable_struct_get(songData,"beatChanges")!=undefined {
				song.beatData = {
					displayName: variable_struct_get(songData.beatChanges,"displayName")!=undefined ? songData.beatChanges.displayName : song.displayName,
					freeplayIcon: variable_struct_get(songData.beatChanges,"freeplayIcon")!=undefined ? scr_makeasset(songData.beatChanges.freeplayIcon,directory) : song.freeplayIcon,
					noEnter: variable_struct_get(songData.beatChanges,"noEnter")!=undefined ? songData.beatChanges.noEnter==true : song.noEnter,
				}
			}
			else {
				song.beatData = {
					displayName: song.displayName,
					freeplayIcon: song.freeplayIcon,
					noEnter: song.noEnter,
				}
			}

			array_push(songs,song)
			array_push(songsName,song.name)
			if !song.hide {
				array_push(fpSongs,song)
			}
		}
	}
	
	var nonSorted = [];
	var addedWknds = [];
	
	var wkndList = scr_jsonparse(directory + "/weeknds.json");
	if wkndList != undefined {
		for (wkndInd=0; wkndInd<array_length(wkndList); wkndInd++) {
			var wkndData = wkndList[wkndInd];
			
			var wkndNum = variable_struct_get(wkndData,"wknd")
			
			var weeknd = {
				wknd: wkndNum,
				hide: variable_struct_get(wkndData,"hide")==true,
				
				//main ig
				name: variable_struct_get(wkndData,"name")!=undefined ? wkndData.name : "WEEKND " + string(wkndNum),
				songs: variable_struct_get(wkndData,"songs")!=undefined ? wkndData.songs : [],
				unlocks: variable_struct_get(wkndData,"unlocks")!=undefined ? wkndData.unlocks : [],
				
				//menu stuff
				assets:[],
				difficulty: variable_struct_get(wkndData,"difficulty")!=undefined ? wkndData.difficulty : "easy",
				
				//stats
				timesPlayed: 0,
				beat: false,
			};
			
			weeknd.songList = variable_struct_get(wkndData,"songList")!=undefined ? wkndData.songList : weeknd.songs
			
			if variable_struct_get(wkndData,"assets") != undefined {
				for (assetInd=0; assetInd<array_length(wkndData.assets); assetInd++) {
					array_push(weeknd.assets,scr_makeasset(wkndData.assets[assetInd],directory))
				}
			}
			
			if variable_struct_get(wkndData,"beatChanges")!=undefined {
				weeknd.beatData = {
					assets:[],
					songList: variable_struct_get(wkndData.beatChanges,"songList")!=undefined ? wkndData.beatChanges.songList : weeknd.songList,
					name: variable_struct_get(wkndData.beatChanges,"name")!=undefined ? wkndData.beatChanges.name : weeknd.name,
					difficulty: variable_struct_get(wkndData.beatChanges,"difficulty")!=undefined ? wkndData.beatChanges.difficulty : weeknd.difficulty,
				}
				
				if variable_struct_get(wkndData.beatChanges,"assets")!= undefined {
					for (assetInd=0; assetInd<array_length(wkndData.beatChanges.assets); assetInd++) {
						array_push(weeknd.beatData.assets,scr_makeasset(wkndData.beatChanges.assets[assetInd],directory))
					}
				} else {
					weeknd.beatData.assets=weeknd.assets
				}
			} else {
				weeknd.beatData = {
					assets:weeknd.assets,
					songList:weeknd.songList,
					name:weeknd.name,
					difficulty:weeknd.difficulty,
				}
			}
			
			if wkndNum !=undefined {
				array_push(addedWknds,wkndNum)
				array_push(weeknds,weeknd)
				
				if !weeknd.hide {
					array_push(menuWknds,weeknd)
				}
				
			} else {
				array_push(nonSorted,weeknd);
			}
		}
		
		if array_length(nonSorted)>0 {
			var wknd=0;
			for (wkndInd=0; wkndInd<array_length(nonSorted); wkndInd++) {
				var unsortedWknd = nonSorted[wkndInd];
				while (array_contains(addedWknds,wknd))
				{
					wknd+=1;
				}
				
				unsortedWknd.wknd = wknd;
				
				array_push(addedWknds,wknd)
				array_push(weeknds,unsortedWknd)
			}
		}
	}
	
	array_sort(weeknds,function(elm1, elm2){
		return elm1.wknd - elm2.wknd;
	})
	
	array_sort(addedWknds,function(elm1, elm2){
		return elm1 - elm2;
	})
	
	show_debug_message(songs);
	show_debug_message(weeknds);
	
	var modName = "FNF FREE DOWNLOAD"
	var modDesc = "The main game!"
	
	var modData = scr_jsonparse(directory + "/mod.json");
	
	if modData != undefined {
		modName = variable_struct_get(modData,"name")		
		modDesc = variable_struct_get(modData,"description")!=undefined ? modData.description : ""
	}
	
	// generate name for mods without a valid name (aka no mod.json or json doesnt have name value)
	if directory!=working_directory && (modName == undefined || modData == undefined) {
		var pathSplit = string_split(directory,"/")
		modName = pathSplit[array_length(pathSplit)-1]
		show_debug_message(modName)
	}
	
	return {
		name: modName,
		description:modDesc,
		
		songs:songs,
		weeknds:weeknds,
		
		//songs but you can get the index for songs array with just the song name
		songsName:songsName,
		weekndsId:addedWknds,
		
		//menu
		menuWknds:weeknds,
		
		//freeplay
		fpSongs:fpSongs,
		fpSel:fpsel,
		
		directory:directory,
	}
}