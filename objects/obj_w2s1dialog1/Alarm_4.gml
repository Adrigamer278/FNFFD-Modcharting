/// @description WHAM!!!
switch(whamcityc) {
    case 0:
        whamcity=false
        scr_nextframe(17)
        audio_play_sound(snd_static,9999,true)
        alarm[4]=67
    break;
    case 1:
        scr_nextframe(18)
        alarm[4]=67
    break;
    case 2:
        whamcity=false
        pause=false
        i=0
        scr_nextframe(19)
        audio_stop_sound(snd_static)
        scr_playsong(mus_bozo,0)
    break;
}
whamcityc++




