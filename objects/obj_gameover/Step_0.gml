if (keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("Z")) or gamepad_button_check_pressed(0,gp_face1)) && gaveup=false {
    audio_stop_sound(mus_gameover)
    audio_play_sound(snd_ha,9999,false)
    alarm[0]=30
    alarm[1]=10000000000 
    sprite_index=spr_dudeayy
}
if (keyboard_check_pressed(vk_escape) or keyboard_check_pressed(vk_shift) or keyboard_check_pressed(ord("X")) or gamepad_button_check_pressed(0,gp_face2)) && gaveup=false {
    gaveup=true
    whatever=0
    sprite_index=spr_dudelost
    alarm[2]=76
}
//give up
if gaveup=true {
    audio_stop_sound(mus_gameover)
    audio_play_sound(snd_owch,9999,false)
    instance_create(0,0,obj_fadeout)
    obj_stats.skipped=false
    if obj_stats.freeplay=false {
        obj_fadeout.roomgo=rm_stuffselect
    } else {
        obj_fadeout.roomgo=rm_freeplay
    }
    audio_play_sound(mus_menu,9999,true)
    instance_destroy();
}

