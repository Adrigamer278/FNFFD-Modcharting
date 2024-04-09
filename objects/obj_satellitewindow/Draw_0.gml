//yeah,, just this
draw_sprite(spr_sat,1,room_width/2,room_height/2)
draw_sprite(spr_sat,0,room_width/2,room_height/2)
draw_sprite(spr_tillite,0,room_width/2,room_height/2)
draw_sprite_ext(spr_tillite,1,room_width/2,room_height/2,1,1,0,c_white,abs(sin(current_time/200)))