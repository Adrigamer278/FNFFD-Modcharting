if keyboard_check_pressed(vk_left) {
    selected--
}
if keyboard_check_pressed(vk_right) {
    selected++
}
selected=clamp(selected,0,2)
if keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("Z")) {
    if selected=1 {
        if !audio_is_playing(sound) {
            audio_play_sound(sound,9999,false)
        } else {
            audio_stop_sound(sound)
        }
    } else {
        sound+=(selected-1)
        audio_stop_all();
    }
}
//quit
if keyboard_check_pressed(vk_escape) {
    game_restart();
}

