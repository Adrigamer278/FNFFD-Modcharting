/// @description hold note caps
/*
surface_set_target(obj_song.notesurf)
    if type = 8 or type = 9 {
        draw_sprite_ext(spriteholdcap,note,x*2,(y-(obj_song.notespeed*image_yscale)-48*(obj_song.notespeed*2))*2,2,-(image_yscale*(obj_song.notespeed*2))*2,0,c_white,image_alpha)
        draw_sprite_ext(spriteholdcap,note,x*2,(y-(obj_song.notespeed*image_yscale)+48*(obj_song.notespeed*2))*2,2,(image_yscale*(obj_song.notespeed*2))*2,0,c_white,image_alpha)
    }
surface_reset_target()

/* */
/*  */
