/// @description scr_screenborder(intensity, alpha)
/// @param intensity
/// @param  alpha
function scr_screenborder(argument0, argument1) {
	var inty=argument0;
	var alpha=argument1;
	if (inty>0 && alpha>0) { 
	    var tempsurface=surface_create(800,800)
	    surface_set_target(tempsurface)
	        //draw_clear_alpha(c_black,0) //reset alpha
	        var i;
	        var ii;
	        var inty2=inty*2
	        for(i=0;i<(inty2)+1;i++) {
	            if i<=inty {
	                drawskip=0
	            } else {
	                drawskip=800-inty2
	            }
	            //draw border
	            var cosy=abs(cos(((i/(inty2))/2)*(2*pi)))
	            draw_set_blend_mode(bm_add)
	            draw_sprite_ext(spr_blackpixel,0,0,i+drawskip,800,1,0,c_black,cosy) //horizontal
	            draw_sprite_ext(spr_blackpixel,0,i+drawskip,0,1,800,0,c_black,cosy) //vertical
	            draw_set_blend_mode(bm_normal)
	        }
	    surface_reset_target()
	    obj_song.spr_screenborder=sprite_create_from_surface(tempsurface,0,0,800,800,false,false,0,0)
	    surface_free(tempsurface)
	} else {
	    obj_song.spr_screenborder=-1
	}



}
