if wavebox=true {
    if !surface_exists(wavesurf) {
        wavesurf=surface_create(__view_get( e__VW.WPort, 0 ),__view_get( e__VW.HPort, 0 ))
    } else {
        surface_set_target(wavesurf)
            draw_clear_alpha(c_black,0)
            draw_set_alpha(1)
            action_inherited();
        surface_reset_target();
    }
    var magicnumber=((1/3)/waveint)-(waveint/160)
    draw_sprite_ext(spr_w4s2dialog2,25,0,0,2,2,0,c_white,moop)
    var i;
    var dingus2
    for(i=0;i<=200;i++) {
        draw_set_alpha(1-moop)
        var siny=sin(current_time/200+i)
        for(dingus2=1;dingus2<=4;dingus2++) { 
            draw_surface_part(wavesurf,0,i*4,__view_get( e__VW.WPort, 0 ),4,(siny*dingus2)*waveint,i*4)
        }
        draw_set_alpha(1)
    }
    audio_sound_pitch(song[mus_you_probably_should_be_gettin_home],1+(waveint/4)*sin(current_time/1000))
} else {
    draw_set_alpha(1)
    action_inherited();
}

