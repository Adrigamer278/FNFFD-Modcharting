if obj_midi_clock.div_4_trigger = true {
tick++
}
switch(tick){
    case 1:
        part=1
    break;
    case 3:
        part=2
    break;
    case 5:
        part=3
    break;
    case 7:
        part=4
    break;
    case 9:
        part=5
    break;
    case 11:
        part=6
    break;
    case 13:
        part=7
    break;
    case 15:
        part=8
    break;
    case 16:
        part=9
    break;
    case 17:
        room_goto(rm_menu)
    break;
}
//skip
if keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("Z")) or gamepad_button_check_pressed(0,gp_face1) {
    instance_destroy(obj_midi_clock)
    audio_play_sound(snd_ha,9999,false)
    audio_stop_sound(snd_gunkayy)
    audio_sound_set_track_position(song,8.72)
    instance_create(0,0,obj_midi_clock)
    obj_midi_clock.bpm=110
    room_goto(rm_menu)
}

