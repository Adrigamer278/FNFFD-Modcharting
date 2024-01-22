var keys=(os_browser == browser_not_a_browser && os_type != os_operagx) ? keyboard_string : string_lower(keyboard_string); // gx target does uppercase always (for some reason)
var i;
for(i=0;i<array_length_1d(code);i++) {
    if string_copy(keys,string_length(keys)-string_length(code[i])-1,string_length(keys))=code[i] {
        switch(i) {
            case 0:
                audio_play_sound(snd_unlockall,9999,false)
				
				for (category=0;category<1;category++) {
					for(songID=0;songID<array_length(obj_stats.categoriesData[category].songs);songID++) {
						var songData = obj_stats.categoriesData[category].songs[songID];
						if !obj_stats.isSongUnlocked(songData[0],category) {
							songData[1].isNew = true
						}
						obj_stats.setSongLockState(songData[0],category,false)
					}
				}
                //clear string
                string_delete(keys,1,string_length(keys))
                keyboard_string=""
            break;
            case 2: //soundtest
                audio_stop_all();
                obj_stats.specialroom="soundtest"
                room_goto(rm_special)
                //clear string
                string_delete(keys,1,string_length(keys))
                keyboard_string=""
            break;
            case 3: //botplay
                audio_stop_all();
                obj_stats.specialroom="chimpgame"
                room_goto(rm_special)
                //clear string
                string_delete(keys,1,string_length(keys))
                keyboard_string=""
            break;
        }
    }
}

/*
"gullible"
"deeper secrets"

/* */
/*  */
