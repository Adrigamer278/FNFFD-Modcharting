function scr_saveoptions() {
	if file_exists("scoresandsets.txt") {
	    file_delete("scoresandsets.txt")
	}
	ini_open("scoresandsets.txt")
	    with(obj_stats) {
	        var cool;
	        var dumb;
	        ini_write_real("settings","downscroll",downscroll)
	        ini_write_real("settings","notetype",readable)
	        ini_write_real("settings","rightbind",bind[0])
	        ini_write_real("settings","upbind",bind[1])
	        ini_write_real("settings","downbind",bind[2])
	        ini_write_real("settings","leftbind",bind[3])
	        ini_write_real("settings","skin",skin)
	        ini_write_real("settings","volume",volume)
	        ini_write_real("extra","discord",discord)
	        ini_write_real("extra","playedw2",playedw2)
	        ini_write_real("extra","seenpopup",seenpopup)
	        ini_write_real("extra","bluedude",bluedude)
	        for(cool=0;cool<maxi-mini;cool++) {
	            for(dumb=0;dumb<=cat;dumb++) {
	                ini_write_real(string("scores")+string(dumb),string(cool)+string("_score"),songscore[dumb,cool])
	                ini_write_real(string("scores")+string(dumb),string(cool)+string("_misses"),songmiss[dumb,cool])
	                ini_write_real(string("bonus")+string(dumb),string(cool)+string("_locked"),songlocked[dumb,cool])
	                ini_write_real(string("bonus")+string(dumb),string(cool)+string("_new"),songnew[dumb,cool])
	            }
	        }
	    }
	ini_close();



}
