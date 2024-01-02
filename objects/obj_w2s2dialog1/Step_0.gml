action_inherited();
///set cutscene sprites
if scr_textcheck() {
    //general updating
    switch(text) {
        case 1: 
            scr_playsong(mus_pictocyan,0.125)
            scr_nextframe(14) 
        break;
        case 6: scr_nextframe(0) break;
        case 7: scr_nextframe(1) break;
        case 11: scr_nextframe(2) break;
        case 12: scr_nextframe(3) break;
        case 13: scr_nextframe(4) break;
        case 14: scr_nextframe(5) break;
        case 15: scr_nextframe(6) break;
        case 17:
            scr_stopsong(mus_pictocyan,0.125)
            scr_nextframe(7)
        break;
        case 18: scr_playsong(mus_player2,0.125) break;
        case 20: scr_nextframe(10) break;
        case 22: scr_nextframe(13) break;
        case 23: audio_resume_sound(song[mus_player2]) break;
        case 24: scr_nextframe(10) break;
        case 26: scr_nextframe(14) break;
        case 28:
            audio_resume_sound(song[mus_player2])
            scr_nextframe(15)
        break;
        case 29: scr_nextframe(16) break;
        case 30: scr_nextframe(17) break;
        case 32:
            audio_resume_sound(song[mus_player2])
            scr_nextframe(20)
        break;
        case 37: scr_nextframe(21) break;
        case 39:
            obj_cutscene.image_draw=25
        break;
        case 41:
            scr_stopsong(mus_player2,0)
            scr_nextframe(18)
        break;
        case 44: scr_nextframe(26) break;
    }
}
//reset sound effect
if i=0 {
    sound=false
}
//cd boy crap. no seriously, this is all for cd-boy
switch(text) {
    case 18: if i<59 { scr_nextframe(8) } else { scr_nextframe(9) } break;
    case 21: 
        if i<29 {
            scr_nextframe(11) 
        } else {
            voice[text]="cd-cyan"
            scr_nextframe(12)
        }
    break;
    case 22:
        if i=ii {
            audio_pause_sound(song[mus_player2])
            if sound=false {
                audio_play_sound(snd_win,9999,false)
                sound=true
            }
        }
    break;
    case 27:
        if i=ii {
            audio_pause_sound(song[mus_player2])
            if sound=false {
                audio_play_sound(snd_own,9999,false)
                sound=true
            }
        }
    break;
    case 31:
        if i<ii { scr_nextframe(18) } else { 
            scr_nextframe(19)
            audio_pause_sound(song[mus_player2])
            if sound=false {
                audio_play_sound(snd_own,9999,false)
                sound=true
            }
        }
    break;
    case 38:
        if i<16 { scr_nextframe(22) } //...
        if i>16 && i<48 { scr_nextframe(23) } //huh
        if i>48 { scr_nextframe(24) } //hahaha!
    break;
}

