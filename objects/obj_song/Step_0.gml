//pause
if ((keyboard_check_pressed(ord("Z")) xor keyboard_check_pressed(vk_enter) xor gamepad_button_check_pressed(0,gp_start)) && instance_exists(obj_midi_clock) && songpos!=0 && songpos!=audio_sound_length(songplaying)) {
    audio_play_sound(snd_recordscratch,9999,false)
    if audio_is_paused(songplaying) && sel=0 {
        paused=false
        audio_resume_sound(songplaying)
        obj_midi_clock.paused=false
        obj_badguy.paused=false
        obj_badguy.sprite_index=badan
        obj_badguy.image_index=badim
        obj_player.sprite_index=dudean
        obj_player.image_index=dudeim
    } else {
        paused=true
        audio_pause_sound(songplaying)
        dudean=obj_player.sprite_index
        dudeim=obj_player.image_index
        badan=obj_badguy.sprite_index
        badim=obj_badguy.image_index
        obj_midi_clock.paused=true
        obj_player.sprite_index=obj_player.pause
        obj_badguy.sprite_index=obj_badguy.pause
        obj_player.image_index=0
        obj_badguy.paused=true
    }
}
if paused=false {
//countdown
    if image_alpha>0{
        image_alpha-=0.05
    }

songpos=audio_sound_get_track_position(songplaying)
songlength = audio_sound_length(songplaying)

if songlength <= 1 && (!(os_browser == browser_not_a_browser) || os_type == os_operagx) {
	songpos = 0
	wasStreaming = true
	songlength = 100; // seems like audio files are streamed instead of preloaded, so wait for them to load
} else {
	if wasStreaming {
		wasStreaming = false
		scr_songint(obj_stats.songgoing[0],obj_stats.catgoing);
	}
}

var prevStep = curStep;

curStep = floor(songpos/stepCrochet);
curBeat = floor(curStep/4);

if prevStep!=curStep {
	for(step = prevStep+1; step <= curStep; step++) {
		if instance_exists(obj_modchart) {
			obj_modchart.stepHit(step);
		}
		
		if step%4 == 0 {
			if instance_exists(obj_modchart) {
				obj_modchart.beatHit(floor(step/4));
			}
		}
	}
}

if instance_exists(obj_modchart) {
	obj_modchart.onUpdate();
}

// check note and event spawns
for(index = 0; index < array_length(allNotes); index++) {   
	var note = allNotes[index];
		
	//pcall
	/*if !instance_exists(note) {
		var index = array_get_index(allNotes,note);
		array_delete(allNotes,index,1)
			
		continue;
	}*/
		
	var diff= note.strumTime - (songpos*1000);
		
	// actually spawn it
	if diff<1500 {
		instance_activate_object(note);
			
		//remove from unspawned
		var index = array_get_index(allNotes,note);
		array_delete(allNotes,index,1)
		
		continue;
	} else {
		break;
	}
}

//culling
//Dont be like me and have the culling check run every frame! It's not good for the environment!!
if songpos!=0 {	
    /*if obj_stats.downscroll=false {
        instance_deactivate_region(-room_width,-600,room_width*2,1800+(y*-1),false,true)
        instance_activate_region(-room_width,-600,room_width*2,1800+(y*-1),true)
        //instance_activate_region(-room_width,-600,room_width*2,1800,true)
    } else {
        instance_deactivate_region(-room_width,-600+(y*-1),room_width*2,1800+y,false,true)
        instance_activate_region(-room_width,-600+(y*-1),room_width*2,1800+y,true)
        //instance_activate_region(-room_width,-600+(y*-1),room_width*2,1800+y,true)
    }*/
}
//surfaces actually stink really bad wow this sux
if window_has_focus() {
    if surfaceh=false {
        ui=surface_create(400,400)
        surfaceh=true
    }
} else {
    surfaceh=false
}
//mcdonalds
    if keyboard_check_pressed(ord("9")) xor gamepad_button_check_pressed(0,gp_shoulderl){
        mcdonalds=!mcdonalds
        if mcdonalds=false {
            playericon=spr_momgotmcdonalds
        } else {
            playericon=spr_dudeicon
        }
    }
/*
//skipping long intros
    if skipto!=0 && songpos<skipto && songpos!=0 {
        if (keyboard_check(vk_control) xor gamepad_button_check(0,gp_select)) {
            skipi+=0.025
        } else {
            skipi-=0.05
        }
        skipi=clamp(skipi,0,2)
        if skipi=2 or obj_stats.skipped=true {
            //screen flash (hide the jank)
            instance_create(0,0,obj_fadein)
            obj_fadein.color=c_white
            //reset skipi value
            skipi=0
            obj_stats.skipped=false
            //change song position
            audio_sound_set_track_position(songplaying,skipto)
            //bpm
            if !instance_exists(obj_midi_clock) {
                instance_destroy(obj_midi_clock)
                instance_create(0,0,obj_midi_clock)
                obj_midi_clock.bpm=bpm
            }
        }
    } else {
        skipi=0
    }
*/
//game over
    if skill>=100 {
        room_goto(rm_gameover)
    }
//end song
    if songpos>=(songlength-0.1) {
        //scoreing
        if saved=false {
            //im going to redo all of this when I remake all these menus and
            //this is going to be so much better
            if coolscore>obj_stats.songgoing[1].score {
                obj_stats.songgoing[1].score=coolscore
            }
			
			if misses<obj_stats.songgoing[1].misses || !obj_stats.songgoing[1].beat {
                obj_stats.songgoing[1].misses=misses
            }
			
			obj_stats.songgoing[1].beat = true;
			obj_stats.songgoing[1].timesPlayed += 1;
			obj_stats.songgoing[1].isNew = false;
			
			saved=true
			scr_saveoptions();
        }
		obj_stats.songgoing[1].isNew = false;
        obj_stats.skipped=false
        //where to go
        if obj_stats.freeplay = false {
            if !instance_exists(obj_fadeout){
                instance_create(0,0,obj_fadeout)
                obj_fadeout.roomgo=rm_cutscenes
                obj_stats.cutgoing+=0.1
            }
        } else {
            if !instance_exists(obj_fadeout) {
                instance_create(0,0,obj_fadeout)
            }
            obj_fadeout.roomgo=rm_freeplay
            if !audio_is_playing(mus_menu) {
                audio_play_sound(mus_menu,9999,true)
            }
        }
    }
}

/* */
/*  */
