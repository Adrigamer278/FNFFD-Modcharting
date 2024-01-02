action_inherited();
///set cutscene sprites
if scr_textcheck() {
    //general updating
    switch(text) {
        case 1: 
            scr_nextframe(0)
            scr_playsong(mus_arkaid,0.125)
        break;
        case 2: scr_nextframe(1) break;
        case 3: scr_nextframe(2) break;
        case 4: scr_nextframe(3) break;
        case 6: scr_nextframe(5) break;
        case 12:
            scr_nextframe(6)
            scr_stopsong(mus_arkaid,0)
            scr_playsong(mus_birthdayboy,0)
            audio_sound_pitch(song[mus_birthdayboy],2)
        break;
        case 18:
            scr_nextframe(3)
            scr_stopsong(mus_birthdayboy,0.125)
            scr_playsong(mus_arkaid,0.125)
        break;
        case 20: scr_nextframe(4) break;
        case 25: //buddy arm break
            scr_nextframe(7)
            scr_playsong(mus_cats,0)
            audio_pause_sound(song[mus_arkaid]) 
            pause=true
            alarm[3]=60
        break;
        case 26:
            audio_resume_sound(song[mus_arkaid]) 
            scr_stopsong(mus_cats,0)
        break;
        case 38:
            scr_nextframe(11)
            scr_stopsong(mus_arkaid,0.25)
        break;
        case 43:
            scr_nextframe(12)
            scr_playsong(mus_kindaAbadass,0)
        break;
        case 60:
            scr_nextframe(13)
            alarm[anext]=60
            audio_pause_sound(song[mus_kindaAbadass])
            audio_play_sound(snd_missing,9999,false)
        break;
        case 61:
            audio_resume_sound(song[mus_kindaAbadass])
            audio_stop_sound(snd_missing)
        break;
    }
}
switch(text) {
    case 8: scr_nextbox(); break;
    case 16:
        if i=14 {
            audio_stop_sound(song[mus_birthdayboy])
        }
    break;
}

