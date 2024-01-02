time--
//sounds
if time = round(maxtime/7) {
    audio_play_sound(snd_oh,9999,false)
}
if time = 0 {
    audio_play_sound(snd_yousuck,9999,false)
}
//the rest of the game
if mouse_check_button_pressed(mb_left) or gamepad_button_check_pressed(0,gp_face1){
    if time <= round(maxtime/7) && time > 0 {
        randomize();
        maxtime=round(120+random(40))
        time=maxtime
        chimpscore+=1
        randomchimp=round(random(2))
        audio_play_sound(snd_ha,9999,false)
    }
    if time < 0 {
        audio_stop_sound(snd_yousuck);
        chimpscore=0
        maxtime=round(120+random(40))
        time=maxtime
        randomchimp=round(random(2))
    }
}
//restart game
if (keyboard_check_pressed(vk_escape) or keyboard_check_pressed(vk_shift) or gamepad_button_check_pressed(0,gp_face2)) {
    window_set_caption("FNF FREE DOWNLOAD")
    game_restart();
}

