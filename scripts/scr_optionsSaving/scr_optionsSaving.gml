function scr_saveoptions(){
	if file_exists("scoresandsets.txt") {
	    file_delete("scoresandsets.txt")
	}
	ini_open("scoresandsets.txt")
	    with(obj_stats) {
	        var cool;
	        var dumb;
			
			//settings
	        ini_write_real("settings","downscroll",downscroll)
	        ini_write_real("settings","notetype",readable)
	        ini_write_real("settings","rightbind",bind[0])
	        ini_write_real("settings","upbind",bind[1])
	        ini_write_real("settings","downbind",bind[2])
	        ini_write_real("settings","leftbind",bind[3])
	        ini_write_real("settings","skin",skin)
	        ini_write_real("settings","volume",volume)
			
			//extra
	        ini_write_real("extra","discord",discord)
	        ini_write_real("extra","seenpopup",seenpopup)
	        ini_write_real("extra","bluedude",bluedude)
			ini_write_real("extra","playedw2",playedw2)
			
			var isIniOpen=true;
			
			for (modInd=0;modInd<array_length(loadedMods);modInd++){
				var modData = loadedMods[modInd]
				
				if !(modInd==0) {
					ini_close();
					isIniOpen=false;
					ini_open(modData.directory + "/savedata.txt")
				}
				
				for(songind=0;songind<array_length(modData.songs);songind++){
					var songData = modData.songs[songind]
					
					var path = "songStats_"+songData.name;
					
					// save
					var keys = variable_struct_get_names(songData.stats);
					for (var i = array_length(keys)-1; i >= 0; --i) {
					    var k = keys[i];
					    var v = variable_struct_get(songData.stats,k);
						
						if is_real(v) {
							ini_write_real(path,k,v)
						} else {
							ini_write_string(path,k,v)
						}						
					}
				}
				
				for(wkndId=0;wkndId<array_length(modData.weeknds);wkndId++) {
					var weekData = modData.weeknds[wkndId];
					
					var path = "weekStats_"+string(weekData.wknd);
					
					// save
					ini_write_real(path,"timesPlayed",weekData.timesPlayed)
					ini_write_real(path,"beat",weekData.beat)
				}
			}
			
			if !isIniOpen {
				ini_close();
				ini_open("scoresandsets.txt");
			}
			
			//scores
	        /*for(cool=0;cool<maxi-mini;cool++) {
	            for(dumb=0;dumb<=cat;dumb++) {
	                ini_write_real(string("scores")+string(dumb),string(cool)+string("_score"),songscore[dumb,cool])
	                ini_write_real(string("scores")+string(dumb),string(cool)+string("_misses"),songmiss[dumb,cool])
	                ini_write_real(string("bonus")+string(dumb),string(cool)+string("_locked"),songlocked[dumb,cool])
	                ini_write_real(string("bonus")+string(dumb),string(cool)+string("_new"),songnew[dumb,cool])
	            }
	        }*/
	    }
	ini_close();
}

function scr_loadoptions(){
	if file_exists("scoresandsets.txt") {
	    ini_open("scoresandsets.txt")
	    with(obj_stats) {
			
			// settings
	        downscroll=ini_read_real("settings","downscroll",false)
	        readable=ini_read_real("settings","notetype",false)
	        bind[0]=ini_read_real("settings","rightbind",37.000000)
	        bind[1]=ini_read_real("settings","upbind",40.000000)
	        bind[2]=ini_read_real("settings","downbind",38.000000)
	        bind[3]=ini_read_real("settings","leftbind",39.000000)
	        skin=ini_read_real("settings","skin",0)
	        volume=ini_read_real("settings","volume",1)
	        audio_master_gain(volume)
			
			//extra
	        discord=ini_read_real("extra","discord",true)
	        seenpopup=ini_read_real("extra","seenpopup",false)
	        bluedude=ini_read_real("extra","bluedude",false)
			playedw2=ini_read_real("extra","playedw2",false)
			
			var isIniOpen=true;
			
			for (modInd=0;modInd<array_length(loadedMods);modInd++){
				var modData = loadedMods[modInd]
				
				if !(modInd==0) {
					ini_close();
					isIniOpen=false;
					ini_open(modData.directory + "/savedata.txt")
				}
				
				for(songind=0;songind<array_length(modData.songs);songind++){
					var songData = modData.songs[songind]
					
					var path = "songStats_"+songData.name;
					
					// save
					var keys = variable_struct_get_names(songData.stats);
					for (var i = array_length(keys)-1; i >= 0; --i) {
					    var k = keys[i];
					    var v = variable_struct_get(songData.stats,k);
						
						if is_real(v) {
							var val = ini_read_real(path,k,v);
							if v == false && k == "locked" { // unlock if it was locked before / ignore
								continue;
							}
							variable_struct_set(songData.stats,k,val)
						} else {
							variable_struct_set(songData.stats,k,ini_read_string(path,k,v))
						}							
					}
				}
				
				for(wkndId=0;wkndId<array_length(modData.weeknds);wkndId++) {
					var weekData = modData.weeknds[wkndId];
					
					var path = "weekStats_"+string(weekData.wknd);
					
					// load
					weekData.timesPlayed = ini_read_real(path,"timesPlayed",0)
					weekData.beat = ini_read_real(path,"beat",false)
				}
			}
	    }
	    ini_close();
	}
}