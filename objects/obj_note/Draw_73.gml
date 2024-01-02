/// @description drawing notes
/*
surface_set_target(obj_song.notesurf)
    switch(type) {
        case 1: //regular notes
            draw_sprite_ext(sprite,note,x*2,y*2,2,2,0,image_blend,image_alpha)
        break;
        case 2: //alt notes
            draw_sprite_ext(sprite,note,x*2,y*2,2,2,0,image_blend,image_alpha)
        break;
        case 3: //bombs
            draw_sprite_ext(bombsprite,note,x*2,y*2,2,2,0,c_white,image_alpha)
        break;
        case 8: //hold
            draw_sprite_ext(spritehold,note,x*2,(y-(obj_song.notespeed*image_yscale))*2,2,(image_yscale*(obj_song.notespeed*2))*2,0,image_blend,image_alpha)
        break;
        case 9: //alt hold
            draw_sprite_ext(spritehold,note,x*2,(y-(obj_song.notespeed*image_yscale))*2,2,(image_yscale*(obj_song.notespeed*2))*2,0,image_blend,image_alpha)
        break;
        case 10: //event notes
            if obj_stats.debug=true {
                draw_sprite_ext(spr_eventnote,0,x*2,y*2,4,4,0,c_white,1)
                draw_sprite_ext(spr_eventnote,0,x*2,y*2,4,4,0,c_white,1)
                draw_text_transformed_color(x*2,y*2,event,4,4,0,c_green,c_green,c_green,c_green,1)
            }
        break;
        case 12:
            //draw_sprite_ext(sprite,note,x*2,y*2,2,2,0,image_blend,image_alpha)
        break;
    }
surface_reset_target();
//draw_text(x*2,y*2,type)

/* */
/*  */
