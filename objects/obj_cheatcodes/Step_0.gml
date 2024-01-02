var keys=(os_browser == browser_not_a_browser && os_type != os_operagx) ? keyboard_string : string_lower(keyboard_string); // gx target does uppercase always (for some reason)
var i;
for(i=0;i<array_length_1d(code);i++) {
    if string_copy(keys,string_length(keys)-string_length(code[i])-1,string_length(keys))=code[i] {
        switch(i) {
            case 0:
                audio_play_sound(snd_unlockall,9999,false)
                var unlock
                var unlockc
                for (unlockc=0;unlockc<=obj_stats.cat;unlockc++) {
                    for (unlock=0;unlock<(obj_stats.mini*-1)+obj_stats.maxi;unlock++) {
                        if obj_stats.songlocked[unlockc,unlock]=true {
                            obj_stats.songnew[unlockc,unlock]=true
                            obj_stats.songlocked[unlockc,unlock]=false
                        }
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
