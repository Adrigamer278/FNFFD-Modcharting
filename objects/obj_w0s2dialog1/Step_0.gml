action_inherited();
///set cutscene sprites
if scr_textcheck() {
    //general updating
    switch(text) {
        case 1: scr_playsong(mus_bozo,0.125) break;
        case 9: scr_nextframe(4) break;
        case 13:
            scr_nextframe(5)
            scr_stopsong(mus_bozo,0)
        break;
        case 14: //spooky strad jingle
            pause=true
            audio_play_sound(snd_spookystrad,9999,false)
            alarm[4]=80
        break;
    }
    //special updating
}

