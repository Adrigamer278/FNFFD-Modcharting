action_inherited();
///set cutscene sprites
if scr_textcheck() {
    //general updating
    switch(text) {
        case 1:
            scr_nextframe(0)
            scr_playsong(mus_cats,0.125)
        break;
        case 2: scr_nextframe(1) break;
        case 4: scr_nextframe(2) break;
        case 6: scr_nextframe(3) break;
        case 7: scr_nextframe(2) break;
        case 12: scr_nextframe(4) break;
        case 14:
            scr_nextframe(5)
            audio_pause_sound(song[mus_cats])
        break;
        case 15: scr_nextframe(6) break;
        case 16: 
            scr_nextframe(4)
            audio_resume_sound(song[mus_cats])
        break;
        case 22: scr_nextframe(7) break;
        case 36:
            scr_nextframe(8)
            scr_stopsong(mus_cats,0.125)
            scr_playsong(mus_mysweetheart,0.125)
        break;
        case 39: scr_nextframe(9) break;
        case 40: scr_nextframe(10) break;
        case 45: scr_nextframe(11) break;
        case 47: scr_nextframe(12) break;
        case 59: scr_nextframe(13) break;
        case 60: scr_playsong(mus_buddy,20) break;
        case 70: scr_nextframe(14) break;
        case 79:
            scr_stopsong(mus_buddy,0)
            scr_nextframe(15)
            audio_play_sound(snd_doorslam2,9999,false)
            alarm[3]=45
            pause=true
        break;
        case 81: scr_playsong(mus_bbbb,0) break;
        case 82: scr_nextframe(18) break;
    }
}
if text=55 && i>=100 {
    scr_stopsong(mus_mysweetheart,0.125)
}

