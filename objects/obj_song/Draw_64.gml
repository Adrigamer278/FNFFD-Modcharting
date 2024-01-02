/// @description screen effects
//ntsc
/*
if ntsc=true {
    squigliness_invert_value *= -1;
    shader_set(petscop_ntsc);
        //cool vars
        var multiplier_map = shader_get_sampler_index(petscop_ntsc,"mult");
        texture_set_stage(multiplier_map, sprite_get_texture(mult,0));
        var squigliness_map = shader_get_sampler_index(petscop_ntsc,"squig");
        texture_set_stage(squigliness_map, sprite_get_texture(squig,0));
        var squigliness_map = shader_get_sampler_index(petscop_ntsc,"overlay");
        texture_set_stage(squigliness_map, sprite_get_texture(overlay,0));
        var squigliness_invert = shader_get_uniform(petscop_ntsc, "squiginv");
        //shader values
        texture_set_stage(multiplier_map, sprite_get_texture(mult,0));
        texture_set_stage(squigliness_map, sprite_get_texture(squig,0));
        texture_set_stage(squigliness_map, sprite_get_texture(overlay,0));
        shader_set_uniform_f(squigliness_invert, squigliness_invert_value);
        draw_surface(application_surface,0,0);
    shader_reset();
}
*/
//wavey
if wavey=true {
    var dingus;
    var dingus2;
    for(dingus=0;dingus<window_get_height()/2;dingus++) {
        //var virgin=0.2+((cos(current_time/1600))*(2*waveint))
        for(dingus2=1;dingus2<=4;dingus2++) {
            draw_surface_part_ext(application_surface,0,dingus*2,window_get_width(),2,x+((sin(current_time/400+(dingus/20))*dingus2)*waveint),dingus*2,1,1,c_white,0.35)
        }
    }
    if wavedude=false {
        var stupid = make_colour_rgb(215,57,89)
        var stupid2 = make_colour_rgb(162,51,103)
        draw_set_halign(fa_center);
        draw_text_ext_transformed_colour(400,170,string_hash_to_newline("stay calm"),0,9999,2,2,0,stupid,stupid,stupid2,stupid2,mmmmm)
        draw_set_halign(fa_left);
        if scr_shadercheck(shader_colorswap,c_white) {
            draw_sprite_ext(obj_player.sprite_index,obj_player.image_index,(obj_player.x-(obj_camera.x-200))*2,(obj_player.y-(obj_camera.y-200))*2,2,2,0,c_white,waveint/2)
            shader_reset();
            //scary dude
            scr_silhouette(make_color_rgb(31,30,40))
                draw_sprite_ext(obj_player.sprite_index,obj_player.image_index,(obj_player.x-(obj_camera.x-200))*2,(obj_player.y-(obj_camera.y-200))*2,2,2,0,c_white,mmmmm)
            shader_reset();
            scr_highlight(make_color_rgb(32,30,40),c_white)
                draw_sprite_ext(obj_player.sprite_index,obj_player.image_index,(obj_player.x-(obj_camera.x-200))*2,(obj_player.y-(obj_camera.y-200))*2,2,2,0,c_white,mmmmm)
            shader_reset();
        } else {
            draw_sprite_ext(obj_player.sprite_index,obj_player.image_index,(obj_player.x-(obj_camera.x-200))*2,(obj_player.y-(obj_camera.y-200))*2,2,2,0,c_white,waveint/2)
        }
    }
}
if sprite_exists(spr_screenborder) {
    draw_sprite(spr_screenborder,0,0,0)
}
    /*
    var time = floor(shader_get_uniform(sh_cool, "Time"))
    var texel = floor(shader_get_uniform(sh_cool, "Texel"))
    shader_set(sh_cool)
        draw_surface(application_surface, 0, 0);
        shader_set_uniform_f(time, current_time)
        shader_set_uniform_f(texel, 0.005, 0.005)
    //shader_reset();
}


/* */
///ui && pause menu
if obj_stats.downscroll=false {
    var minus=0
} else {
    var minus=320//331
}
//skipping intro
//if skipto!=0 draw_sprite_ext(spr_skipintro,0,400,400,2+(skipi*0.2),2+(skipi*0.2),0,c_white,skipi);
//ui
if !surface_exists(ui) {
    ui=surface_create(400,400)
}
if !surface_exists(notesurf) {
    notesurf=surface_create(800,800)
}
surface_set_target(ui)
    draw_clear_alpha(c_black,0) //reset alpha
    ///hp bar
    draw_sprite_ext(spr_whitepixel,0,59,(356-minus),282,19,0,houtline,1)
    draw_sprite_ext(spr_whitepixel,0,61,(358-minus),278,15,0,hplayer,1)
    //test+=(obj_song.skill*0.01*278-test)/2.5
    draw_sprite_ext(spr_whitepixel,0,61,(358-minus),(obj_song.skill*0.01*278),15,0,hbaddie,1)
    //draw_sprite_ext(spr_whitepixel,0,61,(358-minus),(obj_song.skill*0.01*278),15,0,hbaddie,1)
    //flow
    var sinnny=sin(current_time/200)
    draw_sprite_ext(spr_whitepixel,0,200-(80)-2,sinnny+((340-minus))-2,82*2,12,0,foutline,1)
    draw_sprite_ext(spr_whitepixel,0,200-(80),sinnny+(340-minus),80*2,8,0,fback,1)
    draw_sprite_ext(spr_whitepixel,0,200+(80),sinnny+(340-minus),(-80*2*flow),8,0,ffull,1) 
    //icon math
    if obj_song.skill>35 {
        var bh=0
    } else {
        var bh=1
    }
    if obj_song.skill<65 {
        var dh=0
    } else {
        var dh=1
    }
    //draw icons
    draw_sprite_ext(baddieicon,bh,((61-23)+obj_song.skill*0.01*278),(360+6-minus),1,1,0,c_white,1)
    draw_sprite_ext(playericon,dh,((61+20)+obj_song.skill*0.01*278),(360+6-minus),1,1,0,c_white,1)
    //text
    draw_set_halign(fa_center);
    draw_set_color(toutline);
    draw_set_font(fnt_comic1);
    var bobo;
    var bibi;
    for (bobo=0;bobo<3;bobo++) {
        for (bibi=0;bibi<3;bibi++) {
            draw_text(200+bobo-1,((377-minus))+bibi-1,string_hash_to_newline(string("score: ")+string(coolscore)+string(" | ")+string("misses: ")+string(misses)))  
        }
    }
    draw_set_color(tcolor);
    //draw_text_transformed(200,(377-minus),string("score: ")+string(coolscore)+string(" | ")+string("misses: ")+string(misses),1,1,0)
    draw_text(200,(377-minus),string_hash_to_newline(string("score: ")+string(coolscore)+string(" | ")+string("misses: ")+string(misses)))
    draw_set_halign(fa_left);
surface_reset_target()
surface_set_target(notesurf)
    draw_clear_alpha(c_black,0) //reset alpha
    //draw ui notes
    if instance_exists(obj_uinotes) {
        with(obj_uinotes) {
            draw_sprite_ext(sprite,note,x*2,y*2,image_xscale*2,image_yscale*2,image_angle,image_blend,image_alpha)
            if press=true draw_sprite_ext(sprite,note,x*2,y*2,image_xscale*2,image_yscale*2,image_angle,c_black,image_alpha*0.5);            
        }
    }
    //draw notes
    if instance_exists(obj_note) {
        with(obj_note) {
            //notes
            switch(type) {
                case 1: //regular notes
                    draw_sprite_ext(sprite,note,x*2,y*2,image_xscale*2,image_yscale*2,image_angle,image_blend,image_alpha)
                break;
                case 2: //alt notes
                    draw_sprite_ext(sprite,note,x*2,y*2,image_xscale*2,image_yscale*2,image_angle,image_blend,image_alpha)
                break;
                case 3: //bombs
                    draw_sprite_ext(bombsprite,note,x*2,y*2,image_xscale*2,image_yscale*2,image_angle,c_white,image_alpha)
                break;
                case 8: //hold
                    var obama=obj_song.notespeed
                    if place_free(x,y-(obama*image_yscale)-48*obama) { //top note cap
                        draw_sprite_ext(spriteholdcap,note,x*2,(y-(obama)-48*(obama*2))*2,image_xscale*2,-(image_yscale*(obama*2))*2,0,c_white,image_alpha)
                    }
                    if place_free(x,y+(obama*image_yscale)+48*obama) { { //bottom note cap
                        draw_sprite_ext(spriteholdcap,note,x*2,(y-(obama*image_yscale)+48*(obama*2))*2,image_xscale*2,(image_yscale*(obama*2))*2,0,c_white,image_alpha)
                    }}
                    draw_sprite_ext(spritehold,note,x*2,(y-(obj_song.notespeed*image_yscale))*2,image_xscale*2,(image_yscale*(obj_song.notespeed*2))*2,0,image_blend,image_alpha)
                break;
                case 9: //alt hold
                    var obama=obj_song.notespeed
                    if place_free(x,y-(obama*image_yscale)-48*obama) { //top note cap
                        draw_sprite_ext(spriteholdcap,note,x*2,(y-(obama)-48*(obama*2))*2,image_xscale*2,-(image_yscale*(obama*2))*2,0,c_white,image_alpha)
                    }
                    if place_free(x,y+(obama*image_yscale)+48*obama) { //bottom note cap
                        draw_sprite_ext(spriteholdcap,note,x*2,(y-(obama*image_yscale)+48*(obama*2))*2,image_xscale*2,(image_yscale*(obama*2))*2,0,c_white,image_alpha)
                    }
                    draw_sprite_ext(spritehold,note,x*2,(y-(obj_song.notespeed*image_yscale))*2,2,(image_yscale*(obj_song.notespeed*2))*2,0,image_blend,image_alpha)
                break;
                case 10: //event notes
                    if obj_stats.debug=true {
                        draw_sprite_ext(spr_eventnote,0,x*2,y*2,4,4,0,c_white,1)
                        draw_sprite_ext(spr_eventnote,0,x*2,y*2,4,4,0,c_white,1)
                        draw_text_transformed_color(x*2,y*2,string_hash_to_newline(event),4,4,0,c_green,c_green,c_green,c_green,1)
                    }
                break;
                case 12:
                    //draw_sprite_ext(sprite,note,x*2,y*2,2,2,0,image_blend,image_alpha)
                break;
            }
        }
    }
surface_reset_target();
//screen filters
if ntsc=true {//&& shaderbroke=false {
    //cool surface
    if !surface_exists(ntscsurface) {
        ntscsurface=surface_create(800,800)
    }
    surface_set_target(ntscsurface)
        draw_clear_alpha(c_black,0) //reset alpha
        draw_surface(application_surface,0,0); //draw screen
        if hideui=false {
            draw_surface(notesurf,0,0); //draw notes
            //draw healthbar
            if scr_shadercheck(sh_silhouette,houtline) {
                draw_surface_ext(ui,4,4,obj_stats.screenscale/2,obj_stats.screenscale/2,0,c_white,1)
                shader_reset();
            }
            draw_surface_ext(ui,0,0,obj_stats.screenscale/2,obj_stats.screenscale/2,0,c_white,1)
        }
        //draw skip intro sprite
        //draw_sprite_ext(spr_skipintro,0,400,400,2+(skipi*0.2),2+(skipi*0.2),0,c_white,skipi)
    surface_reset_target();
    //shader
    scr_shadercheck(sh_ntsc2)
        draw_surface(ntscsurface,0,0);
    shader_reset();
} else if hideui=false { //draw ui and screen normally
    draw_surface(notesurf,0,0); //draw notes
    //draw health bar
    if scr_shadercheck(sh_silhouette,houtline) {
        draw_surface_ext(ui,4,4,obj_stats.screenscale/2,obj_stats.screenscale/2,0,c_white,1)
        shader_reset();
    }
    draw_surface_ext(ui,0,0,obj_stats.screenscale/2,obj_stats.screenscale/2,0,c_white,1)
}
//pause
if paused=true {
    if (keyboard_check_pressed(vk_down) or gamepad_button_check_pressed(0,gp_padd)) {
        sel++
    }
    if (keyboard_check_pressed(vk_up) or gamepad_button_check_pressed(0,gp_padu)) {
        sel--
    }
    if (keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(vk_enter) or gamepad_button_check_pressed(0,gp_face1)) {
        switch(sel) {
            case 1:
                if !instance_exists(obj_fadeout) {
                    instance_create(0,0,obj_fadeout)
                    obj_fadeout.roomgo=room
                    audio_stop_sound(songplaying)
                    //reset skip
                    obj_stats.skipped=false
                }
            break;
            case 2:
                //fadeout
                if !instance_exists(obj_fadeout) {
                    if obj_stats.freeplay=false {
                        instance_create(0,0,obj_fadeout)
                        obj_fadeout.roomgo=rm_stuffselect
                    } else {
                        instance_create(0,0,obj_fadeout)
                        obj_fadeout.roomgo=rm_freeplay
                    }
                    audio_stop_sound(songplaying)
                    //music
                    if !audio_is_playing(mus_menu) {
                        audio_play_sound(mus_menu,9999,true)
                    }
                    //reset skip
                    obj_stats.skipped=false
                }
            break;
        }
    }
    draw_sprite_ext(spr_whitepixel,0,0,0,__view_get( e__VW.WPort, 0 ),__view_get( e__VW.HPort, 0 ),0,c_black,0.5)
    draw_set_font(fnt_comic2);
    draw_set_color(c_black);
    var xxxx;
    var yyyy;
    for (xxxx=0;xxxx<15;xxxx++) {
        for (yyyy=0;yyyy<15;yyyy++) {
            draw_text_transformed(20+xxxx-7,30+yyyy-7,string_hash_to_newline("PAUSED"),4,4,0)
        }
    }
    draw_set_color(c_white);
    var foobarb = make_colour_rgb(213,217,234)
    draw_text_transformed_colour(20,30,string_hash_to_newline("PAUSED"),4,4,0,c_white,c_white,foobarb,foobarb,1)
    draw_set_font(fnt_comic1);
    draw_set_colour(c_black);
    var xx;
    var yy;
    for (xx=0;xx<7;xx++) {
        for (yy=0;yy<7;yy++) {
            draw_text_transformed(20+xx-3,200+yy-3,string_hash_to_newline("Resume#Restart#Quit"),2,2,0)
        }
    }
    draw_set_colour(c_gray);
    draw_text_transformed(20,200,string_hash_to_newline("Resume#Restart#Quit"),2,2,0)
    draw_set_color(c_white)
    switch(sel) {
        case 0:
            draw_text_transformed(20,200,string_hash_to_newline("Resume"),2,2,0)
        break;
        case 1:
            draw_text_transformed(20,200,string_hash_to_newline("#Restart"),2,2,0)
        break;
        case 2:
            draw_text_transformed(20,200,string_hash_to_newline("##Quit"),2,2,0)
        break;
    }
    draw_set_colour(c_white);
}

/* */
///count down
draw_sprite_ext(sprite_index,image_index,0,0,4,4,0,c_white,image_alpha)

/* */
///debug
if obj_stats.debug=true {
    var poop=y;
    var text=(string("FPS: ")+string(fps)+string("#")+string("event: ")+string(event)+string("#")+string(m)+string("#")+string(mm)+string("#")+string(mmm)+string("#")+string(mmmm)+string("#")+string(mmmmm)+string("#")+string(mmmmmm)+string("#")+string(mmmmmmm)+string("#")+string(poop-48))
    var t;
    for(t=1;t<=string_length(text);t++) {
        if t=1 {
            var longback=0;
            var hi=2;
            var hue=0;
        }
        if string_char_at(text,t) = "#" {
            hi+=35//20
            hue+=0.1
            longback=t
        }
        var xt;
        var yt;
        for(xt=-2;xt<=2;xt++) {
            for(yt=-2;yt<=2;yt++) {
                draw_set_color(c_black)
                draw_text_transformed(xt+((t-longback)*17),yt+hi,string_hash_to_newline(string_char_at(text,t)),2,2,0)
                draw_text_transformed(2+xt+((t-longback)*17),2+yt+hi,string_hash_to_newline(string_char_at(text,t)),2,2,0)
            }
        }
        draw_set_color(make_color_hsv(255*hue,127,255))
        draw_text_transformed((t-longback)*17,hi,string_hash_to_newline(string_char_at(text,t)),2,2,0)
        draw_set_color(c_white)
    }
}

/* */
/*  */
