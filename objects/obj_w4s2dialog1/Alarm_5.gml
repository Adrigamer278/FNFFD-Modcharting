/// @description cyan jump
switch(cyanstage) {
    case 0:
        scr_nextframe(15)
        flakeout=true
        scr_stopsong(mus_pictocyan,2)
        wompwomp=audio_play_sound(snd_failure2,9999,false)
        audio_sound_pitch(wompwomp,0.70)
        alarm[5]=85
    break;
    case 1:
        obj_cutscene.visible=false
        audio_stop_sound(snd_crowd)
        audio_play_sound(snd_walk,9999,false)
        alarm[5]=45
    break;
    case 2:
        scr_nextbox();
        obj_cutscene.visible=true
        pause=false
    break;
}
cyanstage++

