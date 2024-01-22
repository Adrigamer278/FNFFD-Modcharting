switch(obj_stats.catgoing) {
	case 0:
		switch(obj_stats.weekndgoing) {
		    case 1: //infographic
		        //fadein
		        if audio_sound_get_track_position(songplaying)<4.785 {
		            fade=audio_sound_get_track_position(songplaying)/2
		        } else {
		            fade=0
		        }
		        //text
		        draw_set_valign(fa_middle)
		        draw_set_halign(fa_center)
		        draw_set_font(fnt_infographic)
		        var color1 = make_colour_rgb(164,140,96)
		        var color2 = make_colour_rgb(153,115,78)
		        draw_text_colour(room_width/2,room_height/2,string_hash_to_newline("You unlocked something#in freeplay"),color1,color1,color2,color2,fade)
		    break;
		    case 2: //channelsurfing & nermal
		        var color1=make_color_rgb(183,224,251);
		        var color2=make_color_rgb(120,164,228);
		        draw_set_valign(fa_middle)
		        draw_set_halign(fa_center)
		        draw_set_font(fnt_comic2)
		        if audio_sound_get_track_position(songplaying)>0.01 {
		            draw_text_colour(room_width/2,(room_height/2)-34,string_hash_to_newline("You unlocked something#in freeplay"),color1,color1,color2,color2,1)
		            draw_sprite_ext(spr_csunlock,0,room_width/2,(room_height/2)+34,1,1,0,color1,1)
		        }
		    break;
		    case 3: //break it down, triangle man!
		        var color=make_color_rgb(255,180,111)
		        draw_set_valign(fa_middle)
		        draw_set_halign(fa_center)
		        draw_set_font(fnt_tutorial)
		        //background
		        if audio_sound_get_track_position(songplaying)>0.667 && audio_sound_get_track_position(songplaying)<1.333 {
		            draw_set_alpha((audio_sound_get_track_position(songplaying)/1.3)-(0.667));
		            draw_rectangle_colour(0,0,room_width,room_height,c_black,c_black,c_green,c_green,false)
		            draw_set_alpha(1);
		        }
		        //sprites
		        scr_shadercheck(sh_silhouette,color)
		            if audio_sound_get_track_position(songplaying)>0 && audio_sound_get_track_position(songplaying)<0.334 {
		                draw_sprite_ext(spr_introcromp,0,room_width/2,room_height/2,4,4,0,c_orange,1)
		            }
		            if audio_sound_get_track_position(songplaying)>=0.334 && audio_sound_get_track_position(songplaying)<0.667 {
		            draw_sprite_ext(spr_introcromp,1,room_width/2,room_height/2,4,4,0,c_orange,1)
		            }
		            if audio_sound_get_track_position(songplaying)>=0.667 && audio_sound_get_track_position(songplaying)<0.868 {
		                draw_sprite_ext(spr_introcromp,2,room_width/2,room_height/2,4,4,0,c_orange,1)
		            }
		            if audio_sound_get_track_position(songplaying)>=0.868 && audio_sound_get_track_position(songplaying)<1.001 {;
		                draw_sprite_ext(spr_introcromp,3,room_width/2,room_height/2,4,4,0,c_orange,1)
		            }
		            if audio_sound_get_track_position(songplaying)>=1.001 && audio_sound_get_track_position(songplaying)<1.333 {
		                draw_sprite_ext(spr_introcromp,4,room_width/2,room_height/2,4,4,0,c_orange,1)
		            }
		        shader_reset();
		        //flash
		        if (audio_sound_get_track_position(songplaying)>=1.333 && audio_sound_get_track_position(songplaying)<=1.433 && !instance_exists(obj_fadein)) {
		            instance_create(0,0,obj_fadein)
		            obj_fadein.color=c_white
		        }
		        //text
		        if audio_sound_get_track_position(songplaying)>=1.333 {
		            draw_text_colour(room_width/2,(room_height/2)-34,string_hash_to_newline("THERES SOMETHING IN FREEPLAY#WITH YOUR NAME ON IT"),color,color,color,color,1)
		        }
		    break;
		    case 4: //cinemassacre
		        draw_set_valign(fa_middle)
		        draw_set_halign(fa_center)
		        draw_set_font(fnt_comic1)

		        if audio_is_playing(songplaying) {
		            if audio_sound_get_track_position(songplaying)<=3.90376 {
		                //animating
		                var i;
		                var f;
		                for(i=0;i<4;i++) {
		                    for(f=0;f<4;f++) {
		                        var songpos=audio_sound_get_track_position(songplaying);
		                        var diff=0.60276//0.90317
		                        var frametime=(f-2)*0.2//*(12/1000000*delta_time)
		                        var fuck=0.30041+(diff*i)+frametime;
		                        if songpos>=fuck-0.1 && songpos<=fuck+0.1 && songpos!=0 {
		                            dframe[i]=f
		                        }
		                    }
		                }
		                var roomsplit=room_width*(1/4)
		                draw_sprite(spr_danunlock0,dframe[0],roomsplit,roomsplit) //dan
		                draw_sprite(spr_danunlock1,dframe[1],room_width-roomsplit,roomsplit) //duke
		                draw_sprite(spr_danunlock2,dframe[2],roomsplit,room_height-roomsplit) //no name
		                draw_sprite(spr_danunlock3,dframe[3],room_width-roomsplit,room_height-roomsplit) //dude
		                //text
		                if songpos>=2.7 {
		                    draw_text(room_width/2,room_height/2,string_hash_to_newline("You unlocked something#in freeplay man!"))
		                }
		            } else {
		                scr_shadercheck(sh_silhouette,c_orange)
		                    draw_sprite_ext(spr_cowboy,0,(room_width/2)-26,(room_height/2)+73,1,1,0,c_orange,0.5)
		                shader_reset();
		                draw_set_blend_mode(bm_max)
		                draw_sprite_ext(spr_cowboy,0,(room_width/2)-26,(room_height/2)+73,1,1,0,c_orange,1)
		                //leave
		            }
		        }
		    break;
		    default:
		        draw_set_valign(fa_middle)
		        draw_set_halign(fa_center)
		        if audio_is_playing(songplaying) {
		            draw_text(room_width/2,room_height/2,string_hash_to_newline("uh oh!"))
		        }
		    break;
		}
	break;
	default:
	break;
}
//reset random values
draw_set_valign(fa_top)
draw_set_halign(fa_left)
draw_set_font(fnt_comic1)
draw_set_color(c_white)
draw_set_blend_mode(bm_normal)
draw_set_alpha(1)

/* */
/*  */
