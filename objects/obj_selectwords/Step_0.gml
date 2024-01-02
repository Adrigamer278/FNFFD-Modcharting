if keyboard_check_pressed(vk_up) or gamepad_button_check_pressed(0,gp_padu) {
    image_index--
}
if keyboard_check_pressed(vk_down) or gamepad_button_check_pressed(0,gp_padd) {
    image_index++
}
if keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("Z"))  or gamepad_button_check_pressed(0,gp_face1) {
    audio_play_sound(snd_josh,9999,false)
    switch(image_index){
        case 0:
            instance_create(0,0,obj_fadeout)
            obj_fadeout.roomgo=rm_stageselect
        break;
        case 1:
            instance_create(0,0,obj_fadeout)
            obj_fadeout.roomgo=rm_freeplay
        break;
        case 2:
            instance_create(0,0,obj_fadeout)
            obj_fadeout.roomgo=rm_options
        break;
        case 3:
            audio_stop_all();
            room_goto(rm_discord)
        break;
    }
}

