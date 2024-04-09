draw_sprite_ext(spr_whitepixel,0,0,0,__view_get( e__VW.WPort, 0 ),__view_get( e__VW.HPort, 0 ),0,color,alpha)
alpha+=time*deltaMult
if alpha>=1 && roomable=true {
    room_goto(roomgo)
}

