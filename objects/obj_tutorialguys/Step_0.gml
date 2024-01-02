//bopping
if instance_exists(obj_midi_clock) {
    if obj_midi_clock.div_4_trigger = true{
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

