action_inherited();
///set cutscene sprites
if instance_exists(obj_cutscene) {
    //general updating
    switch(text) {
        case 1:
            scr_nextframe(0)
            scr_playsong(mus_birthdayboy,0.125)
        break;
        case 10: audio_pause_sound(song[mus_birthdayboy]) break;
        case 11: scr_nextframe(1) break;
        case 12: scr_nextframe(2) break;
        case 13: scr_nextframe(3) break;
        case 14:
            scr_nextframe(4)
            audio_resume_sound(song[mus_birthdayboy])
        break;
        case 15: scr_nextframe(5) break;
        case 16: scr_nextframe(6) break;
        case 17: scr_nextframe(7) break;
    }
}

