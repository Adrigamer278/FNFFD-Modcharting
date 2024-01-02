/// @description old code
/*
    sprite_index=sprite[times]
    image_index=frame
    //handling what type of stage your on
    if obj_stats.bobmode=false {
        switch(type){
            case 0:
                sprite[0]=spr_ladyidleleft
                sprite[1]=spr_ladyidleright
                sprite[2]=spr_ladyidleleft
                sprite[3]=spr_ladyidleright
                sprite[4]=spr_ladyidleleft
                sprite[5]=spr_ladyidleright
                sprite[6]=spr_ladyidleleft
                sprite[7]=spr_ladyidleright
                maxtypes=7
            break;
        }
    } else {
        switch(type){
            case 0:
                sprite[0]=spr_ladybm
                maxtypes=0
            break;
        }
    }
    //detecting if its a beat
    if instance_exists(obj_midi_clock) {
        if instance_exists(obj_midi_clock) {
            if obj_midi_clock.div_4_trigger = true {
                bouncing=true
                times++
                frame=0
                image_index++
            }
        }
        //playing the animation
        if bouncing = true {
            if frame<4 {
                frame+=0.15
            } else {
                bouncing=false    
            }
        }
        //reseting type
        if times > maxtypes {
            times=0
        }
    }

/* */
/*  */
