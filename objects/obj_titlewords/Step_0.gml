if obj_midi_clock.div_4_trigger = true {
    bounce=true
    time=0
}
if bounce=true{
    if time<12{
        image_xscale=scr_easing(time,1.05,-0.05,12)
        image_yscale=scr_easing(time,1.05,-0.05,12)
        time++
    } else {
        time=0
        bounce=false
    }
}

