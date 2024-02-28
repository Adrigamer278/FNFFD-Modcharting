//I know making 1 and 2 the volume controls is stupid but
//I couldn't make it plus and minus without it being on the numpad
if keyboard_check_pressed(ord(2)) {
    volume+=0.1
    audio_master_gain(volume)
    audio_play_sound(snd_ribbit1,9999,false)
}
if keyboard_check_pressed(ord(1)) {
    volume-=0.1
    audio_master_gain(volume)
    audio_play_sound(snd_ribbit2,9999,false)
}
volume=clamp(volume,0,1)
//deltatime
deltatime=delta_time / 1000000 * room_speed

//weird noise
if keyboard_check(vk_alt) && keyboard_check_pressed(vk_enter) {
    audio_play_sound(snd_weirdnoise,9999,false)
}
//debug
if keyboard_check_pressed(vk_f7) {
    debug=!debug
}
if debug=true {
    if keyboard_check_pressed(vk_f8) {
        shaderdisabled=!shaderdisabled
    }
}

