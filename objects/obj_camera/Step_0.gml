if obj_song.paused=false {
    __view_set( e__VW.XView, 0, x-__view_get( e__VW.WView, 0 )/2 )
    __view_set( e__VW.YView, 0, y-__view_get( e__VW.HView, 0 )/2 )
    __view_set( e__VW.WView, 0, image_xscale )
    __view_set( e__VW.HView, 0, image_xscale )
    __view_set( e__VW.Angle, 0, image_angle )
    image_xscale+=(big[place]-image_xscale)/ease
    x+=(xgo[place]-x)/ease
    y+=(ygo[place]-y)/ease
    image_angle+=(angle-image_angle)/ease
    //camera bouncing
    if instance_exists(obj_midi_clock) {
        if obj_midi_clock.div_4_trigger=true {
            if rate>1 {
                var what=1 //every odd numbered beat
            } else {
                var what=0 //every even numbered beat
            }
            //bounce camera
            if obj_midi_clock.quarter_count%rate=what {
                image_xscale-=bounce[bcount]
                bcount++
            }
        }
        if bcount=5 {
            bcount=1
        }
    }
}

