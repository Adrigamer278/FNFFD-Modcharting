if randomfunny!=99 {
    //funny faces
    if obj_midi_clock.div_16_trigger=true { beat++ }
    //make face random
    if (beat=124 or beat=180 or beat=184 or beat=190) && obj_midi_clock.div_16_trigger=true {
        randomize();
        ranface=round(random(8))+1
    }
    //reset face
    if (beat=1 or beat=128) {
        ranface=0
    }
    if beat=192 { beat=0 }
}
//continue
if (keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("Z")) or gamepad_button_check_pressed(0,gp_face1)) {
    audio_stop_all();
    audio_play_sound(snd_ha,9999,false)
    obj_stats.seenpopup=true
    alarm[0]=40
    if randomfunny=99 {
        draw_set_color(c_white)
        image_blend=c_white
    } else {
        draw_set_color(c_black)
        image_blend=c_black
    }
}

