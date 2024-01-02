if gunkunplugspr>-1 && gunkunplug<18 {
    draw_sprite(spr_w4s2dialog1_yell,gunkunplugspr,0,0)
}
if (text=35 or text=36) && ds!=-1 {
    var dss=clamp(ds,0,3)
    draw_sprite_ext(spr_whitepixel,0,0,0,800,800,0,make_color_rgb(37,59,65),1)
    draw_sprite(spr_w4s2dialog1_ds,dss,0,0)
}
if obj_cutscene.image_draw=14 {
    draw_sprite(spr_w4s2dialog1_cyan,current_time/200,0,0)
    __view_set( e__VW.WView, 0, __view_get( e__VW.WView, 0 ) - (0.046) )
    __view_set( e__VW.HView, 0, __view_get( e__VW.HView, 0 ) - (0.046) )
    __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (0.046/2) )
    __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (0.046/2) )
} else {
    __view_set( e__VW.WView, 0, 400 )
    __view_set( e__VW.HView, 0, 400 )
    __view_set( e__VW.XView, 0, 0 )
    __view_set( e__VW.YView, 0, 0 )
}
draw_sprite_ext(spr_w4s2dialog1,20,0,0,1,1,0,c_white,coolfade)

