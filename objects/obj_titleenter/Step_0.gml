if (keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("Z")) or gamepad_button_check_pressed(0,gp_face1)) && pressed=false{
    flash=true
    alpha=1
    pressed=true
    audio_play_sound(snd_josh,9999,false)
    obj_titlegf.sprite_index=spr_menugfyeah
    alarm[0]=60
}

