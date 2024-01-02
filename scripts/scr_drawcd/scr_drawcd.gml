/// @description scr_drawcd(x,y)
/// @param x
/// @param y
function scr_drawcd(argument0, argument1) {
	//head place
	switch(sprite_index) {
	    case spr_cdboyleft:
	        xx=-10;
	        yy=0;
	    break;
	    case spr_cdboydown:
	        xx=0;
	        yy=10;
	    break;
	    case spr_cdboyup:
	        xx=0;
	        yy=-10;
	    break;
	    case spr_cdboyright:
	        xx=10;
	        yy=0;
	    break;
	    //bombs
	    case spr_cdboyleftb:
	        xx=-10;
	        yy=0;
	    break;
	    case spr_cdboydownb:
	        xx=0;
	        yy=10;
	    break;
	    case spr_cdboyupb:
	        xx=0;
	        yy=-10;
	    break;
	    case spr_cdboyrightb:
	        xx=10;
	        yy=0;
	    break;
	    //extra animations
	    case spr_cdboyhack:
	        xx=0
	        yy=88
	    break;
	    case spr_cdboyexplode:
	        xx=0
	        yy=88
	    break;
	    default:
	        xx=0;
	        yy=0;
	    break;
	}
	var reallycool=sin(current_time/200)*2;
	if sprite_index!=ayy {
	    var dx=(argument0)+xx+(-1+(round(random(1))))
	    var dy=((argument1)+(reallycool)+yy)-88
	    image_alpha=0
	    draw_sprite(sprite_index,image_index,dx,dy)
	    draw_sprite_pos(spr_cdboybody,0,dx-21,dy,dx+52,dy,argument0+52,(dy+88-yy)-(reallycool),argument0-21,(dy+88-yy)-(reallycool),1)
	} else {
	    var dx=argument0
	    var dy=argument1-88
	    draw_sprite(sprite_index,image_index,dx,dy+yy)
	}



}
