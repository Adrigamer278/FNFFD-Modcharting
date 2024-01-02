/// @description gunk peeking
switch(gunkstare) {
    case 0:
        scr_nextframe(7)
        alarm[3]=55
    break;
    case 1:
        audio_play_sound(snd_walk,9999,false)
        alarm[3]=50
        obj_cutscene.visible=false
    break;
    case 2:
        obj_cutscene.visible=true
        scr_nextframe(8)
        scr_stopsong(mus_pictocyan,0) //just incase its still playing
        scr_playsong(mus_popstar_min,0)
        pause=false
    break;
}
gunkstare++

