action_inherited();
///set cutscene sprites
//special
if i=ii && text=47 {
    scr_nextbox();
}
//regular
if scr_textcheck() {
    //general updating
    switch(text) {
        case 1: 
            scr_nextframe(0) 
            scr_playsong(mus_birthdayboy,0.125)
        break;
        case 3: scr_nextframe(1) break;
        case 10: scr_nextframe(2) break;
        case 11: scr_nextframe(3) break;
        case 17: scr_nextframe(4) break;
        case 19: scr_nextframe(5) break;
        case 20: scr_nextframe(6) break;
        case 26: scr_stopsong(mus_birthdayboy,0.125) break;
        case 29:
            scr_playsong(mus_pictocyan,0)
            scr_nextframe(7)
        break;
        case 34:
            audio_pause_sound(song[mus_pictocyan])
            scr_playsong(mus_w1s2_slow_reverb,0)
            scr_nextframe(8)
            pause=true
            alarm[3]=20
        break;
        case 40:
            scr_stopsong(mus_pictocyan,0)
            alarm[4]=audio_sound_length(snd_WHAM)*20
            whamcity=true
            pause=true
            audio_play_sound(snd_WHAM,9999,false)
            //scr_nextframe(19)
        break;
        case 44: scr_nextframe(20) break;
        case 49: scr_nextframe(21) break;
    }
}
if whamcity=true scr_nextframe(15+abs(2*sin(current_time/50)));

