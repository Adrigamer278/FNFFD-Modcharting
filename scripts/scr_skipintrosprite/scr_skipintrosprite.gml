/// @description scr_skipintrosprite(songtype,song)
/// @param songtype
/// @param song
function scr_skipintrosprite(argument0, argument1) {
	//create "SKIP INTRO" sprite
	//set up surface
	tempskipsurface=surface_create(400,400)
	surface_set_target(tempskipsurface)
	draw_clear_alpha(c_black,0)
	//set default settings
	draw_set_font(fnt_comic2)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	//draw sprite
	switch(argument0) {
	    case 1: //BONUS!!
	        switch(argument1) {
	            case 2: //break it down
	                skipto=11.22
	                //draw sprite
	                draw_set_font(fnt_comic1b)
	                draw_sprite_ext(spr_whitepixel,0,0,0,400,400,0,c_orange,0.25)
	                //text
	                var xxlol
	                var yylol
	                var color=c_orange
	                for (xxlol=0;xxlol<6;xxlol++) {
	                    for (yylol=0;yylol<6;yylol++) {
	                        //draw_sprite_ext(spr_bintrohead,2,190-2+xxlol,200-2+yylol,4,4,0,c_black,1)
	                        //draw_sprite_ext(spr_bintrohead,2,190+xxlol,200+yylol,4,4,0,c_black,1)
	                        draw_text_ext_transformed_colour(200+xxlol,200+yylol,string_hash_to_newline("SKIPPING INTRO"),0,999,2,2,0,c_black,c_black,c_black,c_black,1)
	                        draw_text_ext_transformed_colour(200-2+xxlol,200-2+yylol,string_hash_to_newline("SKIPPING INTRO"),0,999,2,2,0,c_black,c_black,c_black,c_black,1)
	                    }
	                }
	                //draw_sprite_ext(spr_bintrohead,2,200,190,4,4,0,c_white,1)
	                draw_text_ext_transformed_colour(200,200,string_hash_to_newline("SKIPPING INTRO"),0,999,2,2,0,color,color,color,color,1)
	            break;
	            case 0: //infographic
	                skipto=26
	                //draw sprite
	                var xxlol
	                var yylol
	                var color=make_color_rgb(220,133,174);
	                var color2=make_color_rgb(247,125,135);
	                for (xxlol=0;xxlol<6;xxlol++) {
	                    for (yylol=0;yylol<6;yylol++) {
	                        draw_sprite_ext(spr_fump,0,200-2+xxlol,200-2+yylol,4,4,0,c_black,1)
	                        draw_sprite_ext(spr_fump,0,200+xxlol,200+yylol,4,4,0,c_black,1)
	                        draw_text_colour(200+xxlol,200+yylol,string_hash_to_newline("SKIPPING INTRO"),c_black,c_black,c_black,c_black,1)
	                        draw_text_colour(200-2+xxlol,200-2+yylol,string_hash_to_newline("SKIPPING INTRO"),c_black,c_black,c_black,c_black,1)
	                    }
	                }
	                draw_sprite_ext(spr_fump,0,200,200,4,4,0,c_white,1)
	                draw_text_colour(200,200,string_hash_to_newline("SKIPPING INTRO"),color,color,color2,color2,1)
	            break;
	            case 0.1:
	                skipto=0
	            break;
	        }
	    break;
	    case 0:
	        switch(argument1) {
	            case 2: //stars
	                skipto=16
	                //draw text
	                var xxlol
	                var yylol
	                for (xxlol=0;xxlol<6;xxlol++) {
	                    for (yylol=0;yylol<6;yylol++) {
	                        draw_text_colour(200+xxlol,200+yylol,string_hash_to_newline("skipping intro B)"),c_black,c_black,c_black,c_black,1)
	                        draw_text_colour(200-3+(xxlol),200-3+(yylol),string_hash_to_newline("skipping intro B)"),c_black,c_black,c_black,c_black,1)
	                    }
	                }
	                draw_set_color(c_fuchsia)
	                draw_text(200,200,string_hash_to_newline("skipping intro B)"))
	                draw_set_color_write_enable(1,1,1,0)
	                draw_sprite_ext(spr_nightskyfromgoogle,1,80,100,0.5,0.5,0,c_purple,0.45)
	                draw_set_color_write_enable(1,1,1,1)
	            break;
	            case 4: //gamejack
	                skipto=21.33
	                //draw sprite
	                var xxlol
	                var yylol
	                var greencolor=make_color_rgb(27,114,24)
	                for (xxlol=0;xxlol<6;xxlol++) {
	                    for (yylol=0;yylol<6;yylol++) {
	                        draw_sprite_ext(spr_cdboyskip,0,200-3+(xxlol),200-3+(yylol),4,4,0,c_black,1)
	                        draw_sprite_ext(spr_cdboyskip,0,200+xxlol,200+yylol,4,4,0,c_black,1)
	                        draw_text_colour(200+xxlol,200+yylol,string_hash_to_newline("SKIPPING INTRO"),c_black,c_black,c_black,c_black,1)
	                        draw_sprite_ext(spr_cdboyskip,0,200,200,1,1,0,c_white,1)
	                        draw_text_colour(200-3+(xxlol),200-3+(yylol),string_hash_to_newline("SKIPPING INTRO"),c_black,c_black,c_black,c_black,1)
	                    }
	                }
	                draw_text_colour(200,200,string_hash_to_newline("SKIPPING INTRO"),greencolor,greencolor,greencolor,greencolor,1)
	            break;
	            case 8: //starfire
	                skipto=24
	                var xxlol
	                var yylol
	                for (xxlol=0;xxlol<6;xxlol++) {
	                    for (yylol=0;yylol<6;yylol++) {
	                        draw_text_colour(200+xxlol,200+yylol,string_hash_to_newline("skipping intro >:("),c_black,c_black,c_black,c_black,1)
	                        draw_text_colour(200-3+(xxlol),200-3+(yylol),string_hash_to_newline("skipping intro >:("),c_black,c_black,c_black,c_black,1)
	                    }
	                }
	                draw_set_color(c_teal)
	                draw_text(200,200,string_hash_to_newline("skipping intro >:("))
	                draw_set_color_write_enable(1,1,1,0)
	                draw_sprite_ext(spr_gunkstage1,1,80,100,0.5,0.5,0,c_white,0.45)
	                draw_set_color_write_enable(1,1,1,1)
	            break;
	        }
	    break;
	}
	//reset default settings
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	draw_set_color(c_white)
	draw_set_font(fnt_comic1)
	//create sprite and destroy surface
	surface_reset_target();
	spr_skipintro=sprite_create_from_surface(tempskipsurface,0,0,400,400,false,0,200,200)
	surface_free(tempskipsurface)



}
