/// @description controlls + stuff
//play the song
if keyboard_check_pressed(vk_enter) {
    if songpos=-1 or (!audio_is_playing(songplaying) && !audio_is_paused(songplaying)){
        songplaying=audio_play_sound(song,9999,false)
        songpos=audio_sound_get_track_position(songplaying)
    } else {
        if audio_is_paused(songplaying) {
            audio_resume_sound(songplaying)
        } else {
            audio_pause_sound(songplaying)
        }
    }
}
if songpos>-1 {
    songpos=audio_sound_get_track_position(songplaying)

	//moving through song
	if keyboard_check_pressed(vk_left) {
	    songpos-=audio_sound_length(songplaying)/songlong
	    audio_sound_set_track_position(songplaying,songpos)
	}
	if keyboard_check_pressed(vk_right) {
	    songpos+=audio_sound_length(songplaying)/songlong
	    audio_sound_set_track_position(songplaying,songpos)
	}
	
	audio_sound_pitch(songplaying, songspeed)
	//MAAATH
    y=-(songpos/60*bpm*4)*16
}
//saving
/*
    if keyboard_check_pressed(ord("S")) {
        scr_savechart(audio_get_name(song));
    }
    if keyboard_check_pressed(ord("L")) {
        scr_loadchart(audio_get_name(song));
    }

/* */
/*  */
