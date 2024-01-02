/// @description animate gunk falling
if obj_cutscene.image_draw=12 {
    audio_play_sound(snd_doorslam,9999,false)
}
if obj_cutscene.image_draw!=14 {
    scr_nextframe(obj_cutscene.image_draw+1)
    alarm[3]=4
} else {
    scr_nextbox();
    pause=false
}

