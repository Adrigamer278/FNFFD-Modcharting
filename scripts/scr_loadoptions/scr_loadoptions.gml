function scr_loadoptions() {
	if file_exists("scoresandsets.txt") {
	    ini_open("scoresandsets.txt")
	    with(obj_stats) {
	        var cool;
	        var dumb;
	        downscroll=ini_read_real("settings","downscroll",false)
	        readable=ini_read_real("settings","notetype",false)
	        bind[0]=ini_read_real("settings","rightbind",37.000000)
	        bind[1]=ini_read_real("settings","upbind",40.000000)
	        bind[2]=ini_read_real("settings","downbind",38.000000)
	        bind[3]=ini_read_real("settings","leftbind",39.000000)
	        skin=ini_read_real("settings","skin",0)
	        volume=ini_read_real("settings","volume",1)
	        audio_master_gain(volume)
	        discord=ini_read_real("extra","discord",true)
	        playedw2=ini_read_real("extra","playedw2",false)
	        seenpopup=ini_read_real("extra","seenpopup",false)
	        bluedude=ini_read_real("extra","bluedude",false)
	        for (cool=0;cool<maxi-mini;cool++) {
	            for (dumb=0;dumb<=cat;dumb++) {
	                songscore[dumb,cool]=ini_read_real(string("scores")+string(dumb),string(cool)+string("_score"),0)
	                songmiss[dumb,cool]=ini_read_real(string("scores")+string(dumb),string(cool)+string("_misses"),0)
	                songlocked[dumb,cool]=ini_read_real(string("bonus")+string(dumb),string(cool)+string("_locked"),false)
	                songnew[dumb,cool]=ini_read_real("bonus"+string(dumb),string(cool)+string("_new"),false)
	            }
	        }
	        //LOCKING BONUS SONGS BY DEFAULT
	        songlocked[1,0]=ini_read_real("bonus1",("0_locked"),true)
	        songlocked[1,1]=ini_read_real("bonus1",("1_locked"),true)
	        songlocked[1,2]=ini_read_real("bonus1",("2_locked"),true)
	        songlocked[1,3]=ini_read_real("bonus1",("3_locked"),true)
	    }
	    ini_close();
	}



}
