switch(mode) {
    case "mimic":
        depth=0
        if obj_song.paused=false {
            ///hit note new
            if obj_song.paused=false {
                var n;
                for (n=0;n<obj_song.notes;n++) {
                    //actually hit note
                    if hit[n] = true {
                        hit[n]=false
                        press=true
                        frame=0
                        //sprite_index=anim[n]
                    }
                }
            //animations
                if (frame<image_number+10 && press=true) {
                    if sprite_index=ayy {
                        frame+=0.2
                    } else {
                        frame+=0.2 //0.5
                    }
                } else {
                    press=false
                    sprite_index=idle[idleon]
                }
                //bopping
                if instance_exists(obj_midi_clock) {
                    if (obj_midi_clock.div_4_trigger = true && press=false) {
                        beat++
                        if beat%everybeat=0 {
                            frame=0
                            bop=true
                            //blah blah whatever
                            if idleon!=numidle {
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
            }
        } else {
            sprite_index=pause
        }
    break;
    case "walkl":
        depth=0
        if obj_song.paused = false {
            speedup+=0.025
            speedup=clamp(speedup,0,0.2)
            x-=2.5+(speedup*speedup)
            x=round(x)
            sprite_index=spr_nermalwalk
            image_speed=0.25
            if x<=-40 {
                mode="float"
                y-=96
                yy=y
                image_speed=0
            }
        } else {
            sprite_index=spr_nermalpause
        }
    break;
    case "float":
        depth=-1
        y=yy+(sin(current_time/150)*5)
        y=round(y)
        if obj_song.paused=false {
            x+=3.2
            x=round(x)
            sprite_index=spr_nermalfloat
            if x>=428 {
                mode="walkl2"
                yy+=96
                y=yy
                image_speed=0.25
                sprite_index=spr_nermalwalk
            }
            instance_create(x,y-78,obj_nermalnyan)
        } else {
            sprite_index=spr_nermalfloatpause
        }
    break;
    case "walkl2":
        depth=0
        if obj_song.paused=false {
            speedup-=0.025
            speedup=clamp(speedup,0,0.2)
            x-=2.5+(speedup*speedup)
            x=round(x)
            if x<=obj_player.x+30 {
                mode="mimic"
                sprite_index=idle[0]
                image_xscale=-1
                image_speed=0
            }
        } else {
            sprite_index=spr_nermalpause
        }
    break;
    case "walkr":
        if obj_song.paused=false {
            depth=0
            x+=1.25
            x=round(x)
            sprite_index=spr_nermalwalk
            image_speed=0.125
        } else {
            sprite_index=spr_nermalpause
        }
    break;
}

