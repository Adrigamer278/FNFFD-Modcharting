/// @description key press old
/*
if paused=false {
    if keyboard_check_pressed(obj_stats.bind[1]){
        if hit = true {
            hit=false
            press=true
            frame=0
            sprite_index=down
        } else {
            obj_song.skill+=2.5
            obj_song.misses+=1
            obj_song.coolscore-=50
            press=true
            frame=0
            sprite_index=dmiss
        }
    }
    if keyboard_check_pressed(obj_stats.bind[2]){
        if hit = true {
            hit=false
            press=true
            frame=0
            sprite_index=up
        } else {
            obj_song.skill+=2.5
            obj_song.misses+=1
            obj_song.coolscore-=50
            press=true
            frame=0
            sprite_index=umiss
        }
    }
    if keyboard_check_pressed(obj_stats.bind[0]){
        if hit = true {
            hit=false
            press=true
            frame=0
            sprite_index=left
        } else {
            obj_song.skill+=2.5
            obj_song.misses+=1
            obj_song.coolscore-=50
            press=true
            frame=0
            sprite_index=lmiss
        }
    }
    if keyboard_check_pressed(obj_stats.bind[3]){
        if hit = true {
            hit=false
            press=true
            frame=0
            sprite_index=right
        } else {
            obj_song.skill+=2.5
            obj_song.misses+=1
            obj_song.coolscore-=50
            press=true
            frame=0
            sprite_index=rmiss
        }
    }
    //animating and timing
    if frame<framenumbs{
        image_index=frame
    }
    if frame<framenumbs+10 && press=true{
        frame+=0.5
    } else {
        press=false
        sprite_index=idle
    }
    //bopping
    if instance_exists(obj_midi_clock) {
        if obj_midi_clock.div_4_trigger = true && press=false{
            frame=0
            bop=true
        }
        if bop = true{
            if frame<framenumbs{
                frame+=0.15
            } else {
                bop=false
            }
            image_index=frame
        }
    }
}

/* */
///hit note new
if obj_song.paused=false {
    var n;
    for (n=0;n<obj_song.notes;n++) {
        //actually hit note
        if keyboard_check_pressed(obj_stats.bind[n]) xor gamepad_button_check_pressed(0,obj_stats.bind[n+4]) {
            if hit[n] = true {
                hit[n]=false
                press=true
                frame=0
                //sprite_index=anim[n]
            } else {
                obj_song.skill+=1+(4*(1-obj_song.flow))
                obj_song.flow-=0.1
                obj_song.misses+=1
                obj_song.coolscore-=50
                press=true
                frame=0
                sprite_index=anim[(n+8)]
                //sound
                randomize();
                var ow = audio_play_sound(snd_owch,9999,false)
                var pitch = 0.6 + random(0.8)
                audio_sound_pitch(ow,pitch)
            }
        }
    }
//animations
    if (frame<image_number+10 && press=true) {
        if sprite_index=ayy {
            frame+=12/1000000*delta_time
        } else {
            frame+=framerate
        }
    } else {
        press=false
        sprite_index=idle[idleon]
    }
    //bopping
    if instance_exists(obj_midi_clock) {
        if (obj_midi_clock.div_4_trigger=true) {
            if everybeat>1 {
                var what=1 //every odd numbered beat
            } else {
                var what=0 //every even numbered beat
            }
            beat++ //increase beat count
            if (beat%everybeat=what) {
                //go to idle animation
                if press=false {
                    frame=0
                    bop=true
                }
                //increase idle count
                if idleon<numidle {
                    idleon++
                } else {
                    idleon=0
                }
            }
        }
        if bop=true && press=false{
            if frame<image_number-1 {
                frame+=0.15
            } else {
                bop=false
            }
        }
    }
    //frame junk so the animations aren't 2 frames
    if frame<image_number-1 {
        image_index=frame
    }
    //triple jump
}

/* */
/*  */
