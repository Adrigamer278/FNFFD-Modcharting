draw_set_color(c_white)
if obj_stats.seenpopup=true {
    room_goto(rm_begining)
} else {
    randomize();
    randomfunny=round(random(100))
    //randomfunny=99
    ranface=0
    beat=0
    if randomfunny=99 { //alt version
        song=audio_play_sound(mus_howdoileavetheoptionsmenu_alt,9999,true)
        draw_set_color(c_black)
        image_blend=c_black
        obj_stats.bluedude=true
    } else { //normal version
        song=audio_play_sound(mus_howdoileavetheoptionsmenu,9999,true)
        instance_create(0,0,obj_midi_clock)
        obj_midi_clock.bpm=140
        obj_stats.bluedude=false
    }
}

