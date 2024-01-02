/// @description bopping
if instance_exists(obj_midi_clock) {
    if obj_midi_clock.div_4_trigger = true{
        image_index=0
        bop=true
    }
}
if bop=true {
    if image_index<framenumbs {
        image_index+=0.2
    }
}

