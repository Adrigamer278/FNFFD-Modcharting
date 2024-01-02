instance_create(0,0,obj_midi_clock)
obj_midi_clock.bpm=bpm
songplaying=audio_play_sound(song,9999,false)
if obj_stats.skipped=true {
    //screen flash (hide the jank)
    instance_create(0,0,obj_fadein)
    obj_fadein.color=c_white
    //reset skipi value and remember that you wanted to skip the intro
    skipi=0
    //change song position
    audio_sound_set_track_position(songplaying,skipto)
}

