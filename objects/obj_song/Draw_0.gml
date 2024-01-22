/// @description stagehand
//WELCOME! to my secret land of switch statements!
//ever wonder why your game isn't running great? it's probably this!
//audio_sound_pitch(songplaying,1.5)

if obj_stats.catgoing = 0 { // default songs
	switch(obj_stats.songgoing[0]) {
		 case "cinemassacre": //cinemassacre
	        switch(event) {
	            case "techdiff":
	                //hide characters
	                obj_player.image_alpha=0
	                obj_badguy.image_alpha=0
	                if instance_exists(obj_danbg) {
	                    obj_danbg.image_alpha=0
	                }
	                if instance_exists(obj_tutorialtable) {
	                    obj_tutorialtable.image_alpha=0
	                }
	                //screen
	                draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,$BDFFAF,1)
	                draw_sprite(spr_techdiff,0,obj_camera.x,obj_camera.y)
	            break;
	            case 0:
	                obj_player.image_alpha=0
	                obj_badguy.image_alpha=0
	                obj_backgroundp1.image_alpha=0
	                draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,c_black,1)
	            break;
	            case 1:
	                //background shenanigans
	                with(obj_backgroundp1) {
	                    image_alpha=0
	                    draw_sprite(spr_danbgdoor,0,0,0)
	                    //slick and nermal
	                    if obj_song.mmmm>=112 && obj_song.mmmm<400 {
	                        obj_song.mmmm+=0.4
	                        draw_sprite(spr_snback,current_time/200,round(obj_song.mmmm),222)
	                    }
	                    draw_sprite(sprite_index,image_index,x,y)
	                }
	                //backgrounds
	                with(obj_danbg) {
	                    image_alpha=0
	                    switch(phase) {
	                        case "walkin":
	                            var xx=round(x);
	                            var xhuh=abs(startx)+212
	                            //draw previous picture
	                            if behind!=-1 {
	                                draw_sprite(sprite_index,behind,212,y)
	                            }
	                            //draw picture
	                            draw_sprite_ext(sprite_index,picture,xx,y,1,1,0,c_white,1)
	                            //the guys
	                            if obj_song.paused=false {
	                                //walking math
	                                if x<212 {
	                                    x+=xhuh/(room_speed*(12*(60/obj_song.bpm)))
	                                } else {
	                                    phase="idle"
	                                }
	                                //draw sprites
	                                draw_sprite_ext(spr_nnwalk1,current_time/200,xx,y,1,1,0,c_white,1)
	                                draw_sprite_ext(spr_dukewalk1,current_time/200,xx+sprite_width,y,1,1,0,c_white,1)
	                            } else {
	                                draw_sprite_ext(spr_nnidk,0,xx,y,1,1,0,c_white,1)
	                                draw_sprite_ext(spr_dukeidk,0,xx+sprite_width,y,1,1,0,c_white,1)
	                            }
	                        break;
	                        case "idle":
	                            draw_sprite_ext(sprite_index,picture,x,y,1,1,0,c_white,1)
	                            draw_sprite_ext(spr_nnidk,0,x,y,1,1,0,c_white,1)
	                            draw_sprite_ext(spr_dukeidk,0,x+sprite_width,y,1,1,0,c_white,1)
	                            waittime+=12/1000000*delta_time //why is this accurate to the animation frame rate? idk
	                            if waittime>=36 {
	                                phase="seeya"
	                            }
	                        break;
	                        case "seeya":
	                            draw_sprite_ext(sprite_index,picture,x,y,1,1,0,c_white,1)
	                            //the guys
	                            if walkout<300 {
	                                walkout+=0.5
	                            }
	                            round(walkout)
	                            draw_sprite_ext(spr_nnwalk2,current_time/200,x-walkout,y,1,1,0,c_white,1)
	                            draw_sprite_ext(spr_dukewalk2,current_time/200,x+sprite_width+walkout,y,1,1,0,c_white,1)
	                        break;
	                    }
	                }
	                //dork spaceship
	                if mm>0 {
	                    mm-=0.75
	                    var sine=160+(sin(current_time/200))*9
	                    draw_sprite(spr_rope,0,round(mm),round(sine))
	                    draw_sprite(spr_dorkspace,0,round(mm),round(sine))
	                }
	                //crompasuar
	                if mmm>0 {
	                    mmm-=0.75
	                    var sine=140+(sin(current_time/200))*9
	                    draw_sprite(spr_rope,0,650-round(mmm),round(sine))
	                    draw_sprite(spr_cromposaurb,0,650-round(mmm),round(sine))
	                }
	                //props
	                with(obj_tutorialtable) {
	                    image_alpha=0
	                    draw_sprite(sprite_index,image_index,x,y)
	                }
	                //characters
	                with(obj_player) {
	                    image_alpha=0
	                    scr_shadercheck(shader_colorswap,c_white) 
	                        draw_sprite(sprite_index,image_index,x,y)
	                    shader_reset();
	                }
	                with(obj_badguy) {
	                    image_alpha=0
	                    draw_sprite(sprite_index,image_index,x,y)
	                }
	                //karoake
	                var ext;
	                mmmmmm+=(mmmmm-mmmmmm)/20 //fade in math
	                //cropping
	                switch(mmmmmmm) {
	                    case 1: var ext=90 break;
	                    case 2: var ext=116 break;
	                    case 3: var ext=207 break;
	                    case 4: var ext=262 break;
	                    case 5: var ext=339 break;
	                    default: var ext=0 break;
	                }
	                //background
	                draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,c_black,mmmmmm)
	                //logo
	                draw_sprite_part_ext(spr_danintro,0,0,0,ext,48,obj_camera.x-sprite_get_xoffset(spr_danintro),obj_camera.y,1,1,c_white,mmmmmm*2)
	            break;
	        }
	        if paused=true && !instance_exists(obj_fadeout) {
	            hideui=true
	            //music
	            var pausemusic;
	            if audio_is_paused(mus_fumpsbreakfast) {
	                audio_resume_sound(pausesong)
	            }
	            if !audio_is_playing(mus_fumpsbreakfast) {
	                pausesong=audio_play_sound(mus_fumpsbreakfast,9999,true)
	            } else {
	                if pausetime<=180 {
	                    pausetime++
	                    audio_sound_gain(pausesong,0,0)
	                } else {
	                    audio_sound_gain(pausesong,1,9800)
	                }
	            }
	            //draw screen
	            draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,$BDFFAF,1)
	            draw_sprite_ext(spr_techdiff,0,obj_camera.x,obj_camera.y,obj_camera.image_xscale/400,obj_camera.image_xscale/400,0,c_white,1)
	        } else {
	            hideui=false
	            audio_sound_gain(pausesong,0,0)
	            audio_pause_sound(pausesong)
	            pausetime=0
	        }
	    break;
		case "break it down triangle man": //break it down, triangle man!
	        //camera
	        if instance_exists(obj_midi_clock) {
	            if obj_midi_clock.div_4_trigger = true {
	                mmmmmm++
	            }
	        }
	        //drawing sprites
	        //sky
	        var stary;
	        for(stary=0;stary<sprite_get_height(spr_bidbg);stary++) {
	            var starsin=sin((current_time/800)+(stary/25))*15;
	            draw_sprite_part_ext(spr_bidbg,1,0,stary,sprite_get_width(spr_nightskyfromgoogle),1,starsin-30,obj_backgroundp1.y+stary,1,1,c_white,1)
	            draw_sprite_part_ext(spr_bidbg,1,0,stary,sprite_get_width(spr_nightskyfromgoogle),1,(-1*starsin)-30,obj_backgroundp1.y+stary,1,1,c_white,0.5)
	        }
	        //buildings
	        draw_sprite_ext(spr_bidbg,0,obj_backgroundp1.x,obj_backgroundp1.y,1,1,0,c_white,obj_backgroundp1.image_alpha)
	        draw_sprite_ext(spr_bidbg2,0,obj_backgroundp1.x,obj_backgroundp1.y,1,1,0,c_white,obj_backgroundp1.image_alpha)
	        switch(event) {
	            case 0: //intro
	                draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,c_white,1)
	                if m>0 {
	                    draw_sprite_ext(spr_introcromp,m-1,obj_camera.x,obj_camera.y,4,4,0,c_white,1)
	                }
	                obj_badguy.image_alpha=0
	                obj_player.image_alpha=0
	                obj_lady.image_alpha=0
	            break;
	            case 1: //tunnel
	                if paused=false {
	                    m+=0.005
	                    mm+=(mmm-mm)/500
	                    mmmm+=(mmmmm-mmmm)/500
	                }
	                draw_sprite(spr_crompt,0,obj_camera.x,obj_camera.y)
	                draw_sprite_ext(obj_badguy.sprite_index,obj_badguy.image_index,obj_camera.x+mm,(obj_camera.y+mmmm)+80,2,2,0,c_white,1)
	                draw_sprite(spr_crompt,1,obj_camera.x,obj_camera.y)
	                draw_sprite_ext(spr_bintro,0,obj_camera.x,obj_camera.y,2,2,0,c_white,m)
	            break;
	            case 2:
	                if paused=false {
	                    mm+=(mmm-mm)/50
	                }
	                with(obj_player) {
	                    scr_shadercheck(shader_colorswap,c_white);
	                        draw_sprite(sprite_index,image_index,x,y)
	                    shader_reset();
	                }
	                with(obj_badguy) {
	                    draw_sprite_ext(sprite_index,image_index,x-obj_song.mm,y,image_xscale,image_yscale,0,c_white,1)
	                }
	            break;
	            case 3: //sad
	                if paused=false {
	                    mm+=(mmm-mm)/100
	                    mmmm+=(mmmmm-mmmm)/120
	                }
	                draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,c_black,1)
	                draw_set_alpha(mmmm);
	                    draw_rectangle_colour(obj_camera.x-200,obj_camera.y-200+((sin(current_time/800))*64),obj_camera.x+200,obj_camera.y+200,c_black,c_black,c_green,c_green,false)
	                draw_set_alpha(1);
	                if !scr_shadercheck(sh_silhouette,c_white) {
	                    draw_set_blend_mode(bm_add)
	                }
	                with(obj_player) {
	                    draw_sprite_ext(sprite_index,image_index,x+25,obj_camera.y+200,1.5,1.5,0,c_white,obj_song.mm)
	                }
	                with(obj_badguy) {
	                    draw_sprite_ext(sprite_index,image_index,x-25,obj_camera.y+200,6,6,0,c_white,obj_song.mm)
	                }
	                draw_set_blend_mode(bm_normal)
	                shader_reset();
	            break;
	            case 4:
	                with(obj_player) {
	                    scr_shadercheck(shader_colorswap,c_white)
	                        draw_sprite(sprite_index,image_index,x,y)
	                    shader_reset();
	                }
	                with(obj_badguy) {
	                    draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,c_white,1)
	                }
	                if mm=true && paused=false {
	                    mmm+=0.35
	                    var animspeed=current_time/200
	                } else {
	                    var animspeed=0
	                }
	                draw_sprite(mmmm,animspeed,obj_player.x+330-mmm,obj_player.y)
	            break;
	            case 5: //do-do-doodoo
	                //background
	                var stary;
	                for(stary=0;stary<sprite_get_height(spr_nightskyfromgoogle)/4;stary++) {
	                    var starsin=sin((current_time/800)+((stary+4)/25))*15;
	                    draw_sprite_part_ext(spr_bidbg,1,0,stary*4,sprite_get_width(spr_nightskyfromgoogle),4,obj_backgroundp1.x+starsin,obj_backgroundp1.y+stary*4,1,1,c_white,1)
	                    draw_sprite_part_ext(spr_bidbg,1,0,stary*4,sprite_get_width(spr_nightskyfromgoogle),4,obj_backgroundp1.x+(-1*starsin),obj_backgroundp1.y+stary*4,1,1,c_white,0.5)
	                }
	                mmm+=0.0025
	                if mmm>=1 {
	                    mmm=0
	                }
	                var soup
	                for(soup=0;soup<7;soup++) {
	                    draw_sprite(spr_skylinecromp,0,(soup*200)+(mmm*-200),obj_camera.y+10)
	                }
	                if paused=false {
	                    var dingus=spr_bintrohead
	                } else {
	                    var dingus=spr_bintroheadp
	                }
	                //heads
	                draw_sprite(dingus,0,obj_camera.x-110,obj_camera.y-70+sin(current_time/200))
	                draw_sprite(dingus,1,obj_camera.x-90,obj_camera.y-20+cos(current_time/200))
	                draw_sprite(dingus,2,obj_camera.x+110,obj_camera.y-70+sin(current_time/200))
	                scr_shadercheck(shader_colorswap,c_white);
	                    draw_sprite(dingus,3,obj_camera.x+90,obj_camera.y-20+cos(current_time/200))
	                shader_reset();
	                //logo
	                draw_sprite(spr_bintro,0,obj_camera.x,obj_camera.y-40+sin(current_time/400))
	            break;
	        }
	        //draw_sprite(spr_bslicknerm,0,obj_player.x+200,obj_player.y)
	    break;
	    case "channelsurfing & nermal": //channelsurfing & nermal
	        //slick colors
	        var slickvisor=make_color_rgb(162,238,188)
	        var slickears=make_color_rgb(123,186,193)
	        //nermal bombs
	        if instance_exists(obj_note) {
	            obj_note.bombhit=false
	            if obj_note.type=3 {
	                obj_note.bombsprite=spr_bombsn
	            }
	        }
	        //tint math
	            if instance_exists(obj_midi_clock) && event>3 {
	                if obj_midi_clock.quarter_count%8=0 { //blue
	                    mm=1
	                    alph=0.42//0.62
	                }
	                if obj_midi_clock.quarter_count&16=0 or obj_midi_clock.quarter_count=0 { //red
	                    mm=0
	                    alph=0.32//0.51
	                }
	                var red=make_color_rgb(251,111,177);
	                var blue=make_color_rgb(115,223,242);
	                mmm+=(mm-mmm)/180
	                mmmm+=(alph-mmmm)/90
	                var colorsky=merge_color(red,blue,mmm)
	                var shade=mmmm
	            } else {
	                var colorsky=make_colour_rgb(240,41,89)
	                var colorshadow=make_color_rgb(89,0,51)
	                var shade=0.55
	            }
	        //var colorsky = make_colour_rgb(240,41,89)
	        switch(event) {
	            case 0:
	                obj_player.image_alpha=0
	                obj_badguy.image_alpha=0
	                obj_nermal.image_alpha=0
	                obj_lady.image_alpha=0
	                draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,c_black,1)
	            break;
	            case 1:
	                var coolcolor=make_color_rgb(183,224,251);
	                var coolcolor2=make_color_rgb(120,164,228);
	                if paused=false {
	                    m+=0.02
	                    mm+=0.0005
	                }
	                draw_rectangle_colour(0,0,400,400,coolcolor,coolcolor,coolcolor2,coolcolor2,false)
	                draw_sprite_ext(obj_player.sprite_index,obj_player.image_index,obj_player.x,obj_player.y-20,1,1,0,c_black,1)
	                draw_sprite_ext(obj_badguy.sprite_index,obj_badguy.image_index,obj_badguy.x,obj_badguy.y-20,1,1,0,c_black,1)
	                draw_sprite_ext(obj_nermal.sprite_index,obj_nermal.image_index,obj_nermal.x,obj_nermal.y-20,1,1,0,c_black,1)
	                draw_sprite_ext(spr_screensurfingintro,0,200,200,1+mm,1+mm,0,c_white,m)
	            break;
	            case 2:
	                var coolcolor=make_color_rgb(183,224,251);
	                var coolcolor2=make_color_rgb(120,164,228);
	                if paused=false {
	                    m+=0.02
	                    mm+=0.0005
	                    mmm+=0.02
	                    mmmm+=0.0005
	                }
	                draw_rectangle_colour(0,0,400,400,coolcolor,coolcolor,coolcolor2,coolcolor2,false)
	                draw_sprite_ext(obj_player.sprite_index,obj_player.image_index,obj_player.x,obj_player.y-20,1,1,0,c_black,1)
	                draw_sprite_ext(obj_badguy.sprite_index,obj_badguy.image_index,obj_badguy.x,obj_badguy.y-20,1,1,0,c_black,1)
	                draw_sprite_ext(obj_nermal.sprite_index,obj_nermal.image_index,obj_nermal.x,obj_nermal.y-20,1,1,0,c_black,1)
	                draw_sprite_ext(spr_screensurfingintro,0,200,200,1+mm,1+mm,0,c_white,m)
	                draw_sprite_ext(spr_screensurfingintro,1,200,200,1+mmmm,1+mmmm,0,c_white,mmm)
	            break;
	            case 3:
	                draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,c_black,1)
	            break;
	            default:
	                //other stuff
	                with(obj_backgroundp1) {
	                    image_alpha=0
	                    draw_sprite(sprite_index,0,x,y)
	                    draw_sprite_ext(sprite_index,0,x,y,1,1,0,c_black,shade)
	                    draw_sprite_ext(sprite_index,0,x,y,1,1,0,colorsky,0.25)
	                    draw_sprite_ext(sprite_index,0,x,y,1,1,0,c_black,0.2)
	                    draw_sprite(sprite_index,1,x,y)
	                }
	                with(obj_nermalnyan) {
	                    draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,c_white,image_alpha)
	                }
	                if instance_exists(obj_nermal) {
	                    if obj_nermal.depth=-1 {
	                        with(obj_nermal) {
	                            image_alpha=0
	                            draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,c_white,1)
	                            draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,colorsky,0.8)
	                            draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,c_black,shade)
	                        }
	                    }
	                }
	                with(obj_lady) {
	                    image_alpha=0
	                    draw_sprite(sprite_index,0,x,y)
	                    draw_sprite_ext(sprite_index,0,x,y,1,1,0,colorsky,0.8)
	                    draw_sprite_ext(sprite_index,0,x,y,1,1,0,c_black,shade)
	                    //screen
	                    switch(obj_song.mmmmmm) {
	                        case 0: //
	                            draw_sprite(spr_cstvscreen,0,x,y)
	                        break;
	                        case -1: //tony
	                            draw_sprite(spr_cstvscreen,2,x,y)
	                        break;
	                        case -2: //nothing
	                            draw_sprite(sprite_index,2,x,y)
	                            draw_sprite_ext(sprite_index,2,x,y,1,1,0,colorsky,0.8)
	                            draw_sprite_ext(sprite_index,2,x,y,1,1,0,c_black,shade)
	                        break;
	                        default: //glitch
	                            randomize();
	                            var randomscreen=round(random(7))
	                            if randomscreen=1 {
	                                var screened=0
	                            } else {
	                                var screened=1
	                            }
	                            draw_sprite(spr_cstvscreen,0+screened,x,y)
	                            obj_song.mmmmmm-=0.5
	                        break;
	                    }
	                    draw_sprite(sprite_index,1,x,y)
	                }
	                with(obj_player) {
	                    image_alpha=0
	                    if scr_shadercheck(shader_colorswap,c_white) {
	                        draw_sprite(sprite_index,image_index,x,y)
	                        shader_reset();
	                        scr_skinswapdude(colorsky)
	                            draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,0.65)
	                        shader_reset();
	                    } else {
	                        draw_sprite(sprite_index,image_index,x,y)
	                        draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,colorsky,0.65)
	                    }
	                    draw_sprite_ext(sprite_index,image_index,x+4,y+4,1,1,0,c_black,shade)
	                }
	                with(obj_badguy) {
	                    image_alpha=0
	                    draw_sprite(sprite_index,image_index,x,y)
	                    draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,colorsky,0.8)
	                    draw_sprite_ext(sprite_index,image_index,x-4,y+4,1,1,0,c_black,shade)
	                    //highlights
	                    //draw_set_blend_mode(bm_add)
	                    if scr_shadercheck(sh_highlight,slickvisor,slickvisor) {
	                        draw_sprite(sprite_index,image_index,x,y)
	                        shader_reset();
	                    }
	                    if scr_shadercheck(sh_highlight,slickears,slickears) {
	                        draw_sprite(sprite_index,image_index,x,y)
	                        shader_reset();
	                    }
	                    //draw_set_blend_mode(bm_normal)
	                }
	                if instance_exists(obj_nermal) {
	                    if obj_nermal.depth=0 {
	                        with(obj_nermal) {
	                            image_alpha=0
	                            draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,c_white,1)
	                            draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,colorsky,0.8)
	                            draw_sprite_ext(sprite_index,image_index,x-4,y+4,image_xscale,image_yscale,0,c_black,shade)
	                        }
	                    }
	                }
	                //BONUS!!!
	                if event>=14 && event<=18 {
	                    with(obj_backgroundp1) {
	                        image_alpha=0
	                        draw_sprite_ext(sprite_index,0,-200,-200,2,2,0,c_white,1)
	                        draw_sprite_ext(sprite_index,0,-200,-200,2,2,0,c_black,shade)
	                        draw_sprite_ext(sprite_index,0,-200,-200,2,2,0,colorsky,0.25)
	                        draw_sprite_ext(sprite_index,0,-200,-200,2,2,0,c_black,0.2)
	                        draw_sprite_ext(sprite_index,1,-200,-200,2,2,0,c_white,1)
	                    }
	                    //tv
	                    draw_sprite(spr_cstvs2,0,200,350+(sin(current_time/200)))
	                    draw_sprite(spr_cstvs2,1,200,350)
	                    draw_sprite(spr_cstv2,0,200,350)
	                    draw_sprite_ext(spr_cstv2,0,200,350,1,1,0,colorsky,0.8)
	                    draw_sprite_ext(spr_cstv2,0,200,350,1,1,0,c_black,shade)
	                    draw_sprite(spr_cstv2,1,200,350)
	                    //the guys
	                    if event>=16 {
	                        dingus=100
	                    } else {
	                        dingus=60
	                    }
	                    mmmmmmm+=(mmmmm-mmmmmmm)/dingus
	                    with(obj_nermal) {
	                        draw_sprite(sprite_index,image_index,obj_camera.x+200-(obj_song.mmmmmmm),obj_camera.y)
	                        draw_sprite_ext(sprite_index,image_index,obj_camera.x+200-(obj_song.mmmmmmm),obj_camera.y,1,1,0,colorsky,0.8)
	                        draw_sprite_ext(sprite_index,image_index,obj_camera.x+192-(obj_song.mmmmmmm),obj_camera.y+8,1,1,0,c_black,shade)
	                    }
	                    with(obj_player) {
	                        image_alpha=0
	                        if scr_shadercheck(shader_colorswap,c_white) {
	                            draw_sprite(sprite_index,image_index,x,y)
	                            shader_reset();
	                            scr_skinswapdude(colorsky);
	                                draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,0.65)
	                            shader_reset();
	                        } else {
	                            draw_sprite(sprite_index,image_index,x,y)
	                            draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,colorsky,0.65)
	                        }
	                        draw_sprite_ext(sprite_index,image_index,x+8,y+8,1,1,0,c_black,shade) 
	                    }
	                    with(obj_badguy) {
	                        image_alpha=0
	                        draw_sprite(sprite_index,image_index,x,y)
	                        draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,colorsky,0.8)
	                        draw_sprite_ext(sprite_index,image_index,x-8,y+8,1,1,0,c_black,shade)
	                        if scr_shadercheck(sh_highlight,slickvisor,slickvisor) {
	                            draw_sprite(sprite_index,image_index,x,y)
	                            shader_reset();
	                            scr_highlight(slickears,slickears)
	                                draw_sprite(sprite_index,image_index,x,y)
	                            shader_reset()
	                        }
	                        //draw_set_blend_mode(bm_normal)
	                    }
	                    draw_sprite_ext(spr_blackpixel,0,0,350,400,400,0,c_black,1)
	                    draw_sprite_ext(spr_blackpixel,0,0,0,400,50,0,c_black,1)
	                }
	                //funny screens
	                if event>=18 && event<=25{
	                    if obj_midi_clock.quarter_count%2=0 {
	                        var bighat=1
	                    } else {
	                        var bighat=0
	                    }
	                    var tempvent=((event-18)*2)+bighat
	                    var tempvent=clamp(tempvent,0,12)
	                    //background
	                    draw_sprite_ext(spr_slickcutsceneb,((tempvent div 12)*2),obj_camera.x,obj_camera.y,2,2,0,c_white,1)
	                    draw_sprite_ext(spr_slickcutsceneb,((tempvent div 12)*2),obj_camera.x,obj_camera.y,2,2,0,c_black,shade)
	                    draw_sprite_ext(spr_slickcutsceneb,((tempvent div 12)*2),obj_camera.x,obj_camera.y,2,2,0,colorsky,0.25)
	                    draw_sprite_ext(spr_slickcutsceneb,((tempvent div 12)*2),obj_camera.x,obj_camera.y,2,2,0,c_black,0.2)
	                    draw_sprite_ext(spr_slickcutsceneb,((tempvent div 12)*2)+1,obj_camera.x,obj_camera.y,2,2,0,c_white,1)
	                    //characters
	                    if tempvent<12 {
	                        draw_sprite_ext(spr_slickcutscene,tempvent,obj_camera.x,obj_camera.y,2,2,0,c_white,1)
	                        draw_sprite_ext(spr_slickcutscene,tempvent,obj_camera.x,obj_camera.y,2,2,0,colorsky,0.8)
	                        draw_sprite_ext(spr_slickcutscene,tempvent,obj_camera.x-8,obj_camera.y+8,2,2,0,c_black,shade)
	                        if scr_shadercheck(sh_highlight,make_color_rgb(162,238,188),make_color_rgb(162,238,188)) {
	                            draw_sprite_ext(spr_slickcutscene,tempvent,obj_camera.x,obj_camera.y,2,2,0,c_white,1)
	                            shader_reset();
	                            scr_highlight(make_color_rgb(123,186,193),make_color_rgb(123,186,193))
	                                draw_sprite_ext(spr_slickcutscene,tempvent,obj_camera.x,obj_camera.y,2,2,0,c_white,1)
	                            shader_reset();
	                        }
	                    } else {
	                        //background
	                        draw_sprite_ext(spr_slickcutscene,12,obj_camera.x,obj_camera.y,2,2,0,c_white,1)
	                        draw_sprite_ext(spr_slickcutscene,12,obj_camera.x,obj_camera.y,2,2,0,colorsky,0.8)
	                        draw_sprite_ext(spr_slickcutscene,12,obj_camera.x+8,obj_camera.y+8,2,2,0,c_black,shade);
	                        draw_sprite_ext(spr_slickcutsceneb,4,obj_camera.x,obj_camera.y,2,2,0,c_white,1)
	                        //dude
	                        if obj_player.sprite_index!=obj_player.idle[0] && obj_player.sprite_index!=obj_player.pause {
	                            var poob=random(4)
	                            draw_sprite_ext(spr_slickcutscened,1,obj_camera.x-2+poob,obj_camera.y-2+poob,2,2,0,c_white,1)
	                            draw_sprite_ext(spr_slickcutscened,1,obj_camera.x-2+poob,obj_camera.y-2+poob,2,2,0,colorsky,0.8)
	                            draw_sprite_ext(spr_slickcutscened,1,obj_camera.x+(-2+poob)+8,obj_camera.y+(-2+poob)+8,2,2,0,c_black,shade)
	                        } else {
	                            if scr_shadercheck(shader_colorswap,c_white) {
	                                draw_sprite_ext(spr_slickcutscened,0,obj_camera.x,obj_camera.y,2,2,0,c_white,1)
	                                shader_reset();
	                                scr_skinswapdude(colorsky)
	                                draw_sprite_ext(spr_slickcutscened,0,obj_camera.x,obj_camera.y,2,2,0,c_white,0.8)
	                                shader_reset();
	                            } else {
	                                draw_sprite_ext(spr_slickcutscened,0,obj_camera.x,obj_camera.y,2,2,0,c_white,1)
	                                draw_sprite_ext(spr_slickcutscened,0,obj_camera.x,obj_camera.y,2,2,0,colorsky,0.8)
	                            }
	                            draw_sprite_ext(spr_slickcutscened,0,obj_camera.x+8,obj_camera.y+8,2,2,0,c_black,shade)
	                        }
                            
	                    }
	                }
	            break;
	        }
	    break;
	    case "infographic": //infographic
	        //26
	        if song=mus_frostbytep1 {
	            var colorsky = make_colour_rgb(115,108,86)
	            var shade=0.55
	            var tvplus=0
	            var coolsine=0
	        } else {
	            var colorsky = make_colour_rgb(184,99,143)    
	            var shade=0.75 
	            var tvplus=9  
	            var coolsine=sin(current_time/200)*4
	        }
	        with(obj_backgroundp1) {
	            draw_set_color(colorsky)
	            draw_rectangle(0,0,room_width,room_height,false)
	            draw_set_color(c_white)
	            image_alpha=0
	            draw_sprite_ext(spr_georgeback,1,x+(((obj_camera.x/image_xscale)/4)-100)+150,y-(((obj_camera.x/image_xscale)/14))+150,0.5,0.5,0,c_white,0.6) //THE WORST WAY TO DO PARALAX LOL
	            draw_sprite(sprite_index,0,x,y)
	            draw_sprite_ext(sprite_index,0,x,y,1,1,0,c_black,shade)
	            draw_sprite_ext(sprite_index,0,x,y,1,1,0,colorsky,0.4)
	        }
	        with(obj_georgetrain) {
	            draw_sprite(sprite_index,image_index,x,y)
	            draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_black,shade)
	            draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,colorsky,0.4)
	        }
	        with(obj_lady) {
	            var waving;
	            var image;
	            switch(obj_song.event) { //tv screen events
	                case 11:
	                    waving=sin(current_time/200)*4
	                    image=8
	                    alpha=1
	                    m=1
	                break;
	                case 13:
	                    waving=0
	                    image=17
	                    alpha=0
	                    //screen flashing
	                    if instance_exists(obj_midi_clock) {
	                        if obj_midi_clock.div_8_trigger=true {
	                            obj_song.m++
	                        }
	                        if obj_song.m%4=0 or obj_song.m=0{
	                            obj_song.mm=1
	                        }
	                        obj_song.mm-=0.02
	                        alpha=obj_song.mm
	                    }
	                break;
	                default:
	                    waving=0
	                    image=image_index
	                    alpha=1
	                break;
	            }
	            //draw table
	            //draw_sprite(spr_georgetable,image_index,x+waving,y)
	            //draw_sprite_ext(spr_georgetable,image_index,x+waving,y,1,1,0,colorsky,0.8)
	            //draw_sprite_ext(spr_georgetable,image_index,x+waving,y,1,1,0,c_black,shade)
	            //draw tv
	            image_alpha=0
	            draw_sprite(sprite_index,image_index,x+waving+coolsine,y)
	            draw_sprite_ext(sprite_index,image_index,x+waving+coolsine,y,1,1,0,colorsky,0.8)
	            draw_sprite_ext(sprite_index,image_index,x+waving+coolsine,y+4,1,1,0,c_black,shade)
	            draw_sprite_ext(spr_georgetvscreen,image+tvplus,x+waving+coolsine,y,1,1,0,c_white,alpha)
	            //draw_sprite_ext(sprite[type],frame,x,y,1,1,0,c_white,1)
	            //draw_sprite_ext(sprite[type],frame,x,y,1,1,0,colorsky,0.8)
	            //draw_sprite_ext(sprite[type],frame,x,y-4,1,1,0,c_black,shade)
	        }
	        with(obj_player) {
	            image_alpha=0
	            if scr_shadercheck(shader_colorswap,c_white) {
	                draw_sprite(sprite_index,image_index,x,y)
	                shader_reset();
	                scr_skinswapdude(colorsky)
	                    draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,0.8)
	                shader_reset();
	            } else {
	                draw_sprite(sprite_index,image_index,x,y)
	                draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,colorsky,0.8)
	            }
	            draw_sprite_ext(sprite_index,image_index,x+8,y,1,1,0,c_black,shade)
	        }
	        with(obj_georgeghost) {
	            visible=false
	            draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,image_blend,image_alpha)
	        }
	        with(obj_badguy) {
	            image_alpha=0
	            draw_sprite(sprite_index,image_index,x,y)
	            draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,colorsky,0.8)
	            draw_sprite_ext(sprite_index,image_index,x-8,y,1,1,0,c_black,shade)
	        }
	        //screencover stuff that isn't in draw gui bc im lazy
	        if song=mus_frostbytep1 {
	            switch(event) {
	                case 0:
	                    draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,c_black,1)
	                break;
	                case 1:
	                    var coolboys;
	                    coolboys=songpos/20
	                    draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,c_black,1)
	                    draw_sprite_ext(spr_georgewindow,0,200,200,coolboys+1,coolboys+1,0,c_white,coolboys*10)
	                break
	                case 2:
	                    draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,c_black,1)
	                break;
	                case 3:
	                    draw_sprite(spr_georgecutscene,0,0,0)
	                    if obj_player.sprite_index!=obj_player.idle[0] && obj_player.sprite_index!=obj_player.pause {
	                        var poob=random(4)
	                        draw_sprite(spr_dudegintro,1,-2+poob,-2+poob)
	                        draw_sprite_ext(spr_dudegintro,1,0,0,1,1,0,colorsky,0.8)
	                        draw_sprite_ext(spr_dudegintro,1,(-2+poob)+8,(-2+poob)+8,1,1,0,c_black,shade)
	                    } else {
	                        if scr_shadercheck(shader_colorswap,c_white) {
	                            draw_sprite(spr_dudegintro,0,0,0)
	                            shader_reset();
	                            scr_skinswapdude(colorsky)
	                                draw_sprite_ext(spr_dudegintro,0,0,0,1,1,0,c_white,0.8)
	                            shader_reset();
	                        } else {
	                            draw_sprite(spr_dudegintro,0,0,0)
	                            draw_sprite_ext(spr_dudegintro,0,0,0,1,1,0,colorsky,0.8)
	                        }
	                        draw_sprite_ext(spr_dudegintro,0,8,0,1,1,0,c_black,shade)
	                    }
	                break;
	                case 4:
	                    draw_sprite(spr_georgecutscene,1,0,0)
	                break;
	                case 5:
	                    draw_sprite(spr_georgecutscene,2,0,0)
	                    mmmmmm=1
	                break;
	                case 6:
	                    if paused=false {
	                        mmmmmm+=0.0002
	                    }
	                    draw_sprite_ext(spr_georgetvintro,0,obj_camera.x,obj_camera.y,mmmmmm,mmmmmm,0,c_white,1)
	                break;
	                case 7:
	                    if paused=false {
	                        mmmmmm+=0.0002
	                    }
	                    draw_sprite_ext(spr_georgetvintro,1,obj_camera.x,obj_camera.y,mmmmmm,mmmmmm,0,c_white,1)
	                break;
	                case 8:
	                    if paused=false {
	                        mmmmmm+=0.0002
	                    }
	                    draw_sprite_ext(spr_georgetvintro,2,obj_camera.x,obj_camera.y,mmmmmm,mmmmmm,0,c_white,1)
	                break;
	                case 9:
	                    if paused=false {
	                        mmmmmm+=0.0002
	                    }
	                    draw_sprite_ext(spr_georgetvintro,3,obj_camera.x,obj_camera.y,mmmmmm,mmmmmm,0,c_white,1)
	                break;
	            }
	        } else {
	            //fump notes
	            if instance_exists(obj_note) {
	                with(obj_note) {
	                    if note<4 {
	                        sprite=spr_notefump
	                    }
	                }
	            }
	            instance_create(obj_badguy.x,obj_badguy.y,obj_georgeghost);
	            switch(event) {
	                case 0:
	                    draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,c_black,1)
	                    m=0
	                break;
	                case 1:
	                    //draw_sprite(spr_georgecutscene,3,0,0)
	                    if paused=false {
	                        m+=0.75
	                        var cooltext = "INCOMING FUMP"
	                    } else {
	                        var cooltext = "bro, really?"
	                    }
	                    var xx;
	                    var yy;
	                    for (xx=0;xx<120;xx++) {
	                        for (yy=0;yy<120;yy++) {
	                            draw_sprite_ext(spr_whitepixel,0,-50+(xx*44)+m-80,(yy*44)+m-80,44,44,0,make_color_rgb(220,133,174),1)
	                            draw_sprite_ext(spr_fump,0,-50+(xx*44)+m-80,(yy*44)+m-80,2,2,0,c_white,1)
	                            draw_sprite_ext(spr_whitepixel,0,(xx*44)+m-80,(yy*44)+m-80,44,44,0,make_color_rgb(220,133,174),0.25)
	                        }
	                    }
	                    draw_sprite_ext(spr_fump,0,obj_camera.x,obj_camera.y,5+(m/20),5+(m/20),0,c_black,1)
	                    draw_set_font(fnt_comic1)
	                    draw_set_halign(fa_center)
	                    draw_set_valign(fa_middle)
	                    draw_set_color(c_black)
	                    var xxt;
	                    var yyt;
	                    for (xxt=0;xxt<4;xxt++) {
	                        for (yyt=0;yyt<4;yyt++) {
	                            draw_set_color(c_black)
	                            draw_text_transformed(obj_camera.x-2+xxt,obj_camera.y-2+yyt,string_hash_to_newline(cooltext),2,2,0)
	                            draw_text_transformed(obj_camera.x+xxt,obj_camera.y+yyt,string_hash_to_newline(cooltext),2,2,0)
	                        }
	                    }
	                    draw_set_color(make_color_rgb(255,174,201)) //thats mspaint pink lol
	                    draw_text_transformed(obj_camera.x,obj_camera.y,string_hash_to_newline(cooltext),2,2,0)
	                    draw_set_font(fnt_comic1)
	                    //resetting text stuff
	                    draw_set_halign(fa_left)
	                    draw_set_valign(fa_top)
	                    draw_sprite_ext(spr_whitepixel,0,0,obj_camera.y-120,room_width,-500,0,c_black,1)
	                    draw_sprite_ext(spr_whitepixel,0,0,obj_camera.y+120,room_width,+500,0,c_black,1)
	                break;
	                case 3:
	                    window_set_position((lol-12)+sin(current_time/200)*24,lol2)
	                break;
	                case 4:
	                    window_set_position((lol-24)+sin(current_time/400)*48,(lol2-12)+sin(current_time/200)*24)
	                break;;
	                case 5:
	                    window_set_position(lol,lol2)
	                break;
	            }
	        }
	    break;
	    case "i, robot": //i, robot
	        //note stuff
	        if instance_exists(obj_note) {
	            obj_note.sprite=spr_uinotegaw
	            obj_note.spritehold=spr_notesholdgaw
	            obj_note.spriteholdcap=spr_notecapgaw
	        }
	        obj_uinotes.sprite=spr_uinotegaw
	        //ui
	        //health bar
	        houtline=c_white
	        hplayer=c_black
	        hbaddie=c_black
	        //flow
	        foutline=c_white
	        fback=c_black
	        ffull=c_white
	        //icons
	        baddieicon=spr_stradicongaw
	        playericon=spr_dudeicongaw
	        //text color
	        tcolor=c_black
	        toutline=c_white
	        //guys
	        with(obj_tutorialguys) {
	            image_alpha=0
	            scr_shadercheck(shader_colorswap,c_white)
	                draw_sprite(sprite_index,image_index,x,y)
	                draw_set_blend_mode(bm_max)
	                draw_sprite(sprite_index,image_index,x,y)
	                draw_set_blend_mode(bm_normal)
	            shader_reset();
	            draw_sprite(spr_tutorialbglight,0,x,y)
	        }
	        with(obj_player) {
	            image_alpha=0
	            draw_sprite(sprite_index,image_index,x,y)
	        }
	        with(obj_badguy) {
	            image_alpha=0
	            draw_sprite(sprite_index,image_index,x,y)
	        }
	        //event stuff
	        switch(event) {
	            case 0:
	            break;
	            case 1:
	                m+=0.05
	                //set text values
	                draw_set_font(fnt_tutorial)
	                draw_set_valign(fa_middle)
	                draw_set_halign(fa_center)
	                //draw text
	                draw_set_alpha(m)
	                var i;
	                var ii;
	                for (i=0;i<3;i++) {
	                    for (ii=0;ii<3;ii++) {
	                        draw_set_color(c_white)
	                        draw_text_ext_transformed(299+i,149+ii,string_hash_to_newline("YOU"),10,999,3,3,0)
	                    }
	                }
	                draw_set_color(c_black)
	                draw_text_ext_transformed(300,150,string_hash_to_newline("YOU"),10,999,3,3,0)
	                //set text values back to normal
	                draw_set_valign(fa_top)
	                draw_set_halign(fa_left)
	                draw_set_alpha(1)
	                draw_set_font(fnt_comic1)
	            break;
	            case 2:
	                m+=0.05
	                mm+=0.05
	                //set text values
	                draw_set_font(fnt_tutorial)
	                draw_set_valign(fa_middle)
	                draw_set_halign(fa_center)
	                //draw text
	                draw_set_alpha(mm)
	                var h;
	                var hh;
	                for (h=0;h<3;h++) {
	                    for (hh=0;hh<3;hh++) {
	                        draw_set_color(c_white)
	                        draw_text_ext_transformed(99+h,149+hh,string_hash_to_newline("BADGUY"),10,999,2,2,0)
	                    }
	                }
	                draw_set_color(c_black)
	                draw_text_ext_transformed(100,150,string_hash_to_newline("BADGUY"),10,999,2,2,0)
	                draw_set_alpha(m)
	                var i;
	                var ii;
	                for (i=0;i<3;i++) {
	                    for (ii=0;ii<3;ii++) {
	                        draw_set_color(c_white)
	                        draw_text_ext_transformed(299+i,149+ii,string_hash_to_newline("YOU"),10,999,3,3,0)
	                    }
	                }
	                draw_set_color(c_black)
	                draw_text_ext_transformed(300,150,string_hash_to_newline("YOU"),10,999,3,3,0)
	                //reset text values
	                draw_set_valign(fa_top)
	                draw_set_halign(fa_left)
	                draw_set_alpha(1)
	                draw_set_font(fnt_comic1)
	            break;
	            case 3:
	                m-=0.05
	                mm-=0.05
	                m=clamp(m,0,1)
	                mm=clamp(mm,0,1)
	                //set text values
	                draw_set_font(fnt_tutorial)
	                draw_set_valign(fa_middle)
	                draw_set_halign(fa_center)
	                //draw text
	                draw_set_alpha(mm)
	                var h;
	                var hh;
	                for (h=0;h<3;h++) {
	                    for (hh=0;hh<3;hh++) {
	                        draw_set_color(c_white)
	                        draw_text_ext_transformed(99+h,149+hh,string_hash_to_newline("BADGUY"),10,999,2,2,0)
	                    }
	                }
	                draw_set_color(c_black)
	                draw_text_ext_transformed(100,150,string_hash_to_newline("BADGUY"),10,999,2,2,0)
	                draw_set_alpha(m)
	                var i;
	                var ii;
	                for (i=0;i<3;i++) {
	                    for (ii=0;ii<3;ii++) {
	                        draw_set_color(c_white)
	                        draw_text_ext_transformed(299+i,149+ii,string_hash_to_newline("YOU"),10,999,3,3,0)
	                    }
	                }
	                draw_set_color(c_black)
	                draw_text_ext_transformed(300,150,string_hash_to_newline("YOU"),10,999,3,3,0)
	                //reset text values
	                draw_set_valign(fa_top)
	                draw_set_halign(fa_left)
	                draw_set_alpha(1)
	                draw_set_font(fnt_comic1)
	            break;
	            case 5:
	            break;
	            case 6:
	            break;
	            default:
	                var textbad;
	                var textgood;
	                var goodcolor;
	                //sprites
	                    //badguy
	                    var badleft=obj_badguy.anim[0]
	                    var baddown=obj_badguy.anim[1]
	                    var badup=obj_badguy.anim[2]
	                    var badright=obj_badguy.anim[3]
	                    //goodguy
	                        //correct
	                        var goodleft=obj_player.anim[0]
	                        var gooddown=obj_player.anim[1]
	                        var goodup=obj_player.anim[2]
	                        var goodright=obj_player.anim[3]
	                        //miss
	                        var goodleftm=obj_player.anim[8]
	                        var gooddownm=obj_player.anim[9]
	                        var goodupm=obj_player.anim[10]
	                        var goodrightm=obj_player.anim[11]
	                //determine text
	                switch(obj_badguy.sprite_index) { //badguy
	                    case badleft:
	                        textbad="LEFT"
	                    break;
	                    case baddown:
	                        textbad="DOWN"
	                    break;
	                    case badup:
	                        textbad="UP"
	                    break;
	                    case badright:
	                        textbad="RIGHT"
	                    break;
	                    default:
	                        textbad=""
	                    break;
	                }
	                switch(obj_player.sprite_index) { //goodguy
	                    case goodleft:
	                        textgood="LEFT"
	                        goodcolor=c_white
	                    break;
	                    case gooddown:
	                        textgood="DOWN"
	                        goodcolor=c_white
	                    break;
	                    case goodup:
	                        textgood="UP"
	                        goodcolor=c_white
	                    break;
	                    case goodright:
	                        textgood="RIGHT"
	                        goodcolor=c_white
	                    break;
	                    case goodleftm:
	                        textgood="LEFT"
	                        goodcolor=c_red
	                    break;
	                    case gooddownm:
	                        textgood="DOWN"
	                        goodcolor=c_red
	                    break;
	                    case goodupm:
	                        textgood="UP"
	                        goodcolor=c_red
	                    break;
	                    case goodrightm:
	                        textgood="RIGHT"
	                        goodcolor=c_red
	                    break;
	                    default:
	                        textgood=""
	                        goodcolor=c_white
	                    break;
	                }
	                //light up
	                if obj_badguy.image_index=1 {
	                    mmm=1
	                } else {
	                    mmm-=0.05
	                }
	                if (obj_player.image_index>=0 && obj_player.image_index<=2 && obj_player.sprite_index != obj_player.idle[0]) {
	                    mmmm=1
	                } else {
	                    mmmm-=0.05
	                }
	                //draw text
	                //set text values
	                draw_set_font(fnt_tutorial)
	                draw_set_valign(fa_middle)
	                draw_set_halign(fa_center)
	                //draw text
	                draw_set_alpha(mmm)
	                var h;
	                var hh;
	                for (h=0;h<3;h++) {
	                    for (hh=0;hh<3;hh++) {
	                        draw_set_color(c_white)
	                        draw_text_ext_transformed(99+h,149+hh,string_hash_to_newline(textbad),10,999,3,3,0)
	                    }
	                }
	                draw_set_color(c_black)
	                draw_text_ext_transformed(100,150,string_hash_to_newline(textbad),10,999,3,3,0)
	                draw_set_alpha(mmmm)
	                var i;
	                var ii;
	                for (i=0;i<3;i++) {
	                    for (ii=0;ii<3;ii++) {
	                        draw_set_color(goodcolor)
	                        draw_text_ext_transformed(299+i,149+ii,string_hash_to_newline(textgood),10,999,3,3,0)
	                    }
	                }
	                draw_set_color(c_black)
	                draw_text_ext_transformed(300,150,string_hash_to_newline(textgood),10,999,3,3,0)
	                //reset text values
	                draw_set_valign(fa_top)
	                draw_set_halign(fa_left)
	                draw_set_alpha(1)
	                draw_set_font(fnt_comic1)
	            break;
	        }
	    break;
	    case "summer": //summer
	        var colorsky=make_colour_rgb(232,183,108)
	        //drawing stuff
	        //(this part isn't a switch because I needed an "or" statement lol)
	        if event=0 or event=1 { //daytime background
	            with(obj_backgroundp1) {
	                draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,make_color_rgb(145,207,221),1)
	                draw_sprite(spr_houseback2,0,x+(((obj_camera.x/image_xscale)/4)-100),y) //THE WORST WAY TO DO PARALAX LOL
	                draw_self();
	            }
	        }
	        if event=2 { //summer time
	                with(obj_backgroundp1) {
	                    var colorsky2=make_colour_rgb(230,140,111)
	                    image_blend=colorsky
	                    draw_rectangle_colour(0,0,room_width,250,colorsky2,colorsky2,colorsky,colorsky,false)
	                    draw_sprite_ext(spr_houseback2,0,x+(((obj_camera.x/image_xscale)/4)-100),y,1,1,0,colorsky,1) //THE WORST WAY TO DO PARALAX LOL
	                    draw_self();
	                }
	                with(obj_player) {
	                    image_alpha=0
	                    if scr_shadercheck(shader_colorswap,c_white) {
	                        draw_sprite(sprite_index,image_index,x,y)
	                        shader_reset();
	                        scr_skinswapdude(colorsky)
	                            draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,0.8)
	                        shader_reset();
	                    } else {
	                        draw_sprite(sprite_index,image_index,x,y)
	                        draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,colorsky,0.8)
	                    }
	                    draw_sprite_ext(sprite_index,image_index,x+4,y+4,1,1,0,c_black,0.4)
	                }
	                with(obj_badguy) {
	                    image_alpha=0
	                    draw_sprite(sprite_index,image_index,x,y)
	                    draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,colorsky,0.8)
	                    draw_sprite_ext(sprite_index,image_index,x-4,y+4,1,1,0,c_black,0.4)
	                }
	                with(obj_lady) {
	                    image_alpha=0
	                    drawgirl=false
	                    var wump
	                    draw_sprite(sprite_index,image_index,x,y)
	                    draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,colorsky,0.8)
	                    draw_sprite_ext(sprite_index,image_index,x,y+4,1,1,0,c_black,0.4)
	                    draw_sprite(spr_speakersscreenlight,image_index,x,y)
	                    draw_sprite(sprite[type],frame,x,y)
	                    draw_sprite_ext(sprite[type],frame,x,y,1,1,0,colorsky,0.8)
	                    draw_sprite_ext(sprite[type],frame,x,y+4,1,1,0,c_black,0.4)
	            }
	        }
	    break;
	    case "stars": //stars
	        //drawing stuff
	        //var colorsky=make_colour_rgb(71,47,94)
	        var colorsky=make_colour_rgb(75,46,112);
	        //sky
	        draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,colorsky,1)
	        var starp=-10+round((((obj_camera.x/image_xscale)/2)-200));
	        var stary;
	        for(stary=0;stary<sprite_get_height(spr_nightskyfromgoogle);stary++) {
	            var starsin=sin((current_time/800)+(stary/25))*15;
	            draw_sprite_part_ext(spr_nightskyfromgoogle,0,0,stary,sprite_get_width(spr_nightskyfromgoogle),1,starp+starsin,stary,1,1,c_white,0.25)
	            draw_sprite_part_ext(spr_nightskyfromgoogle,0,0,stary,sprite_get_width(spr_nightskyfromgoogle),1,starp+(-1*starsin),stary,1,1,c_white,0.25)
	        }
	        //background
	        with(obj_backgroundp1) {
	                //var colorsky2=make_colour_rgb(230,140,111)
	                var colorsky2=make_colour_rgb(37,24,50)
	                var spotlight = make_color_rgb(17,38,123)
	                //var colorsky2=make_colour_rgb(75,46,112)
	                image_blend=colorsky2
	                draw_sprite_ext(spr_houseback2,0,x+(((obj_camera.x/image_xscale)/4)-100),y,1,1,0,colorsky2,1) //THE WORST WAY TO DO PARALAX LOL
	                draw_self();
	            }
	            with(obj_lady) {
	                image_alpha=0
	                drawgirl=false
	                var wump
	                draw_sprite(sprite_index,image_index,x,y)
	                draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,colorsky,0.8)
	                draw_sprite_ext(sprite_index,image_index,x,y-4,1,1,0,c_black,0.5)
	                draw_sprite(spr_speakersscreenlight,image_index,x,y)
	                if obj_song.event!=9 {
	                    draw_sprite_ext(sprite[type],frame,x,y,1,1,0,c_white,1)
	                    draw_sprite_ext(sprite[type],frame,x,y,1,1,0,colorsky,0.8)
	                    draw_sprite_ext(sprite[type],frame,x,y-4,1,1,0,c_black,0.5)
	                }
	                draw_sprite(spr_housebackslights,image_index,obj_backgroundp1.x,obj_backgroundp1.y)
	            }
	            switch(event) {
	                case 3:
	                    with(obj_player) {
	                        draw_sprite_ext(sprite_index,image_index,x+80,y+100,2,2,0,c_black,1)
	                    }
	                    with(obj_badguy) {
	                        draw_sprite_ext(sprite_index,image_index,x-100,y+180,2,2,0,c_black,1)
	                    }
	                break;
	                case 4:
	                    with(obj_player) {
	                        draw_sprite_ext(sprite_index,image_index,x+80,y+100,2,2,0,c_black,1)
	                    }
	                    with(obj_badguy) {
	                        draw_sprite_ext(sprite_index,image_index,x-100,y+180,2,2,0,c_black,1)
	                    }
	                break;
	                case 5:
	                    obj_player.image_alpha=0
	                    with(obj_badguy) {
	                        image_alpha=0
	                        draw_set_alpha(0.5)
	                        draw_ellipse_colour(x-120,y-20,x+180,y+20,c_white,c_white,false)
	                        draw_set_alpha(1)
	                        draw_sprite(sprite_index,image_index,x,y)
	                        draw_sprite_ext(sprite_index,image_index,x,y+4,1,1,0,c_black,0.6)
	                        draw_sprite_ext(spr_ireallydidntwanttomakethisasprite,0,x+10,0,1,1,0,c_white,1)
	                        draw_set_color(c_black)
	                        draw_rectangle(0,0,x-160,room_height,false)
	                        draw_rectangle(x+160,0,room_width,room_height,false)
	                        draw_set_color(c_white)
	                        draw_sprite_ext(spr_ireallydidntwanttomakethisasprite,0,x+10,0,-1,1,0,c_white,1)
	                        draw_rectangle_colour(0,0,x-140,room_height,c_black,c_black,c_black,c_black,false)
	                        draw_rectangle_colour(x+160,0,room_width,room_height,c_black,c_black,c_black,c_black,false)
	                    }
	                break;
	                case 6:
	                    obj_badguy.image_alpha=0
	                    with(obj_player) {
	                        image_alpha=0
	                        draw_set_alpha(0.5)
	                        draw_ellipse_colour(x-160,y-20,x+140,y+20,c_white,c_white,false)
	                        draw_set_alpha(1)
	                        scr_shadercheck(shader_colorswap,c_white)
	                            draw_sprite(sprite_index,image_index,x,y)
	                        shader_reset();
	                        draw_sprite_ext(sprite_index,image_index,x,y+4,1,1,0,c_black,0.6)
	                        draw_sprite_ext(spr_ireallydidntwanttomakethisasprite,0,x,0,1,1,0,c_white,1)
	                        draw_sprite_ext(spr_ireallydidntwanttomakethisasprite,0,x,0,-1,1,0,c_white,1)
	                        draw_set_color(c_black)
	                        draw_rectangle(0,0,x-150,room_height,false)
	                        draw_rectangle(x+150,0,room_width,room_height,false)
	                        draw_set_color(c_white)
	                        draw_rectangle_colour(0,0,x-150,room_height,c_black,c_black,c_black,c_black,false)
	                        draw_rectangle_colour(x+150,0,room_width,room_height,c_black,c_black,c_black,c_black,false)
	                    }
	                break;
	                case 7:
	                    obj_player.image_alpha=0
	                    with(obj_badguy) {
	                        image_alpha=0
	                        draw_set_alpha(0.5)
	                        draw_ellipse_colour(x-120,y-20,x+180,y+20,c_white,c_white,false)
	                        draw_set_alpha(1)
	                        draw_sprite(sprite_index,image_index,x,y)
	                        draw_sprite_ext(sprite_index,image_index,x,y+4,1,1,0,c_black,0.6)
	                        draw_sprite_ext(spr_ireallydidntwanttomakethisasprite,0,x+10,0,1,1,0,c_white,1)
	                        draw_set_color(c_black)
	                        draw_rectangle(0,0,x-160,room_height,false)
	                        draw_rectangle(x+160,0,room_width,room_height,false)
	                        draw_set_color(c_white)
	                        draw_sprite_ext(spr_ireallydidntwanttomakethisasprite,0,x+10,0,-1,1,0,c_white,1)
	                        draw_rectangle_colour(0,0,x-140,room_height,c_black,c_black,c_black,c_black,false)
	                        draw_rectangle_colour(x+160,0,room_width,room_height,c_black,c_black,c_black,c_black,false)
	                    }
	                break;
	                case 8:
	                    obj_badguy.image_alpha=0
	                    with(obj_player) {
	                        image_alpha=0
	                        draw_set_alpha(0.5)
	                        draw_ellipse_colour(x-160,y-20,x+140,y+20,c_white,c_white,false)
	                        draw_set_alpha(1)
	                        scr_shadercheck(shader_colorswap,c_white)
	                            draw_sprite(sprite_index,image_index,x,y)
	                        shader_reset();
	                        draw_sprite_ext(sprite_index,image_index,x,y+4,1,1,0,c_black,0.6)
	                        draw_sprite_ext(spr_ireallydidntwanttomakethisasprite,0,x,0,1,1,0,c_white,1)
	                        draw_sprite_ext(spr_ireallydidntwanttomakethisasprite,0,x,0,-1,1,0,c_white,1)
	                        draw_set_color(c_black)
	                        draw_rectangle(0,0,x-150,room_height,false)
	                        draw_rectangle(x+150,0,room_width,room_height,false)
	                        draw_set_color(c_white)
	                        draw_rectangle_colour(0,0,x-150,room_height,c_black,c_black,c_black,c_black,false)
	                        draw_rectangle_colour(x+150,0,room_width,room_height,c_black,c_black,c_black,c_black,false)
	                    }
	                break;
	                case 9:
	                    with(obj_player) {
	                        image_alpha=0
	                        draw_set_alpha(0.5)
	                        draw_ellipse_colour(x-320,y-20,x+180,y+20,c_white,c_white,false)
	                        draw_set_alpha(1)
	                        scr_shadercheck(shader_colorswap,c_white)
	                            draw_sprite(sprite_index,image_index,x,y)
	                        shader_reset();
	                        draw_sprite_ext(sprite_index,image_index,x,y+4,1,1,0,c_black,0.6)
	                        with(obj_mimic) { //lady
	                            image_alpha=0
	                            draw_sprite(sprite_index,image_index,x,y)
	                            draw_sprite_ext(sprite_index,image_index,x,y+4,1,1,0,c_black,0.6)
	                        }
	                        draw_sprite_ext(spr_ireallydidntwanttomakethisasprite,0,x-40,0,-1,1,0,c_white,1)
	                        draw_rectangle_colour(x+110,0,room_width,room_height,c_black,c_black,c_black,c_black,false)
	                        draw_set_color(c_black)
	                        draw_rectangle(x+190,0,room_width,room_height,false)
	                        draw_set_color(c_white)
	                    }
	                    with(obj_badguy) {
	                        image_alpha=0
	                        draw_sprite(sprite_index,image_index,x,y)
	                        draw_sprite_ext(sprite_index,image_index,x,y+4,1,1,0,c_black,0.6)
	                        draw_sprite_ext(spr_ireallydidntwanttomakethisasprite,0,x+80,0,1,1,0,c_white,1)
	                        draw_set_color(c_black)
	                        draw_rectangle(0,0,x-190,room_height,false)
	                        draw_set_color(c_white)
	                        draw_rectangle_colour(0,0,x-270,room_height,c_black,c_black,c_black,c_black,false)
	                    }
	                break;
	                case 10:
	                    with(obj_player) {
	                        image_alpha=0
	                        if scr_shadercheck(c_white) {
	                            draw_sprite(sprite_index,image_index,x,y)
	                            shader_reset();
	                            scr_skinswapdude(colorsky)
	                                draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,0.8)
	                            shader_reset();
	                        } else {
	                            draw_sprite(sprite_index,image_index,x,y)
	                            draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,colorsky,0.8)
	                        }
	                        draw_sprite_ext(sprite_index,image_index,x+4,y,1,1,0,c_black,0.5)
	                    }
	                    with(obj_badguy) {
	                        image_alpha=0
	                        draw_sprite(sprite_index,image_index,x,y)
	                        draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,colorsky,0.8)
	                        draw_sprite_ext(sprite_index,image_index,x-4,y,1,1,0,c_black,0.5)
	                    }
	                    draw_sprite(spr_housebacklightsgirl,0,obj_backgroundp1.x,obj_backgroundp1.y)
	                break;
	                default: //digdslgdsf
	                    with(obj_player) {
	                        image_alpha=0
	                        if scr_shadercheck(shader_colorswap,c_white) {
	                            draw_sprite(sprite_index,image_index,x,y)
	                            shader_reset();
	                            scr_skinswapdude(colorsky)
	                                draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,0.8)
	                            shader_reset();
	                        } else {
	                            draw_sprite(sprite_index,image_index,x,y)
	                            draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,colorsky,0.8)
	                        }
	                        draw_sprite_ext(sprite_index,image_index,x+4,y,1,1,0,c_black,0.5)
	                    }
	                    with(obj_badguy) {
	                        image_alpha=0
	                        draw_sprite(sprite_index,image_index,x,y)
	                        draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,colorsky,0.8)
	                        draw_sprite_ext(sprite_index,image_index,x-4,y,1,1,0,c_black,0.5)
	                    }
	                break;
	            }
	            //5 light
	            //6 lights
	    break;
	    case "girl next door": //girl next store
	        if paused=false {
	            m+=1
	            mm+=0.25
	            if m>=344 {
	                m=0
	            }
	            if mm>=238 {
	                mm=0
	            }
	            if mmm>2392 {
	                mmm=1196
	            }
	            if event>=4 {
	                mmm+=4
	            }
	        }
	        draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,make_color_rgb(192,192,192),1)
	        switch(event) {
	        case 4: //darkness intro
	            //background
	            with(obj_backgroundp1) {
	            var i;
	            var ii;
	            var iii;
	            for (ii=0;ii<13;ii++) {
	                draw_sprite(spr_backbustrees,0,9+(239*ii)-obj_song.mm,137)
	            }
	            for (i=0;i<13;i++) {
	                draw_sprite(spr_backbus,0,9+(5*i)-obj_song.m,137)
	            }
	            for (iii=0;iii<40;iii++) {
	                draw_sprite(spr_tunnel,0,449+(92*iii)-obj_song.mmm,90)
	            }
	                image_index=0
	                draw_sprite(sprite_index,image_index,0,0) //base
	                draw_sprite_ext(sprite_index,image_index,0,0,1,1,0,c_black,(obj_song.mmm*0.05)-0.2) //dark 1
	                draw_sprite_ext(sprite_index,image_index,0,2,1,1,0,c_black,obj_song.mmm*0.05) //full dark
	                draw_sprite(sprite_index,2,0,0) //base
	                draw_sprite_ext(sprite_index,2,0,0,1,1,0,c_black,(obj_song.mmm*0.05)-0.2) //dark 1
	                draw_sprite_ext(sprite_index,2,0,2,1,1,0,c_black,obj_song.mmm*0.05) //full dark
	            }
	            //effects
	            with(obj_player) {
	                image_alpha=0
	                scr_shadercheck(shader_colorswap,c_white)
	                    draw_sprite(sprite_index,image_index,x,y)
	                shader_reset();
	                draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_black,obj_song.mmm*0.05)
	                if scr_shadercheck(sh_highlight,make_color_rgb(32,30,40),c_white) {
	                    draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,obj_song.mmm*0.05)
	                    shader_reset();
	                }
	            }
	            with(obj_badguy) {
	                image_alpha=0
	                draw_sprite(sprite_index,image_index,x,y)
	                draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_black,obj_song.mmm*0.05)
	            }
	            with(obj_lady) {
	                drawgirl=false
	                image_alpha=0
	                draw_sprite(sprite_index,image_index,x,y)
	                draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_black,obj_song.mmm*0.05)
	                draw_sprite_ext(spr_speakersscreenlight,image_index,x,y,1,1,0,c_white,1-obj_song.mmm*0.05)
	                draw_sprite(sprite[type],frame,x,y)
	                draw_sprite_ext(sprite[type],frame,x,y,1,1,0,c_black,obj_song.mmm*0.05)
	            }
	        break;
	        case 5: //cyan turn
	            //background
	            mmmm+=0.025
	            if obj_badguy.sprite_index!=obj_badguy.idle[0] && obj_badguy.image_index<3 {
	                mmmm=0
	            }
	            with(obj_backgroundp1) {
	            var i;
	            var ii;
	            var iii;
	            var funcolor=make_color_rgb(24,252,240);
	            for (ii=0;ii<13;ii++) {
	                draw_sprite(spr_backbustrees,0,9+(239*ii)-obj_song.mm,137)
	            }
	            for (i=0;i<13;i++) {
	                draw_sprite(spr_backbus,0,9+(345*i)-obj_song.m,137)
	            }
	            for (iii=0;iii<40;iii++) {
	                draw_sprite(spr_tunnel,0,449+(92*iii)-obj_song.mmm,90)
	            }
	                image_index=0
	                draw_sprite(sprite_index,image_index,0,0) //base
	                draw_sprite_ext(sprite_index,image_index,0,0,1,1,0,c_black,(obj_song.mmm*0.05)-0.2) //dark 1
	                draw_sprite_ext(sprite_index,image_index,0,2,1,1,0,c_black,obj_song.mmm*0.05) //full dark
	                draw_sprite(sprite_index,2,0,0) //base
	                draw_sprite_ext(sprite_index,2,0,0,1,1,0,c_black,0.7) //dark 1
	                draw_sprite_ext(sprite_index,2,0,2,1,1,0,c_black,obj_song.mmm*0.05) //full dark
	            }
	            //effects
	            with(obj_player) {
	                image_alpha=0
	                if scr_shadercheck(shader_colorswap,c_white) {
	                    draw_sprite(sprite_index,image_index,x,y)
	                    shader_reset();
	                    draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_black,obj_song.mmm*0.05)
	                    scr_skinswapdude(funcolor)
	                        draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,0.20)
	                    shader_reset();
	                    draw_sprite_ext(sprite_index,image_index,x+4,y,1,1,0,c_black,0.40+obj_song.mmmm)
	                    scr_highlight(make_color_rgb(32,30,40),c_white)
	                        draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,obj_song.mmm*0.05)
	                    shader_reset();
	                } else {
	                    draw_sprite(sprite_index,image_index,x,y)
	                    draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_black,obj_song.mmm*0.05)
	                    draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,funcolor,0.20)
	                    draw_sprite_ext(sprite_index,image_index,x+4,y,1,1,0,c_black,0.40+obj_song.mmmm)
	                }
	            }
	            with(obj_badguy) {
	                image_alpha=0
	                draw_sprite(sprite_index,image_index,x,y)
	                draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_black,obj_song.mmm*0.05)
	                draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,funcolor,0.24)
	                draw_sprite_ext(sprite_index,image_index,x-4,y,1,1,0,c_black,0.4)
	                draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_black,obj_song.mmmm)
	            }
	            with(obj_lady) {
	                drawgirl=false
	                image_alpha=0
	                draw_sprite(sprite_index,image_index,x,y)
	                draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_black,obj_song.mmm*0.05)
	                draw_sprite_ext(spr_speakersscreenlightw2,0,x,y,1,1,0,c_white,1-obj_song.mmmm)
	                //draw_sprite_ext(spr_speakersscreenlightw2,0,x,y,1,1,0,c_black,obj_song.mmmm) 
	                draw_sprite(sprite[type],frame,x,y)
	                draw_sprite_ext(sprite[type],frame,x,y,1,1,0,c_black,obj_song.mmm*0.05)
	                draw_sprite_ext(sprite[type],frame,x,y,1,1,0,funcolor,0.20)
	                draw_sprite_ext(sprite[type],frame,x,y-4,1,1,0,c_black,0.40)
	                draw_sprite_ext(sprite[type],frame,x,y,1,1,0,c_black,obj_song.mmmm)
	            }
	        break;
	        case 6: //dude turn
	            //background
	            mmmm+=0.025
	            if obj_player.sprite_index!=obj_badguy.idle[0] && obj_player.image_index<3 {
	                mmmm=0
	            }
	            with(obj_backgroundp1) {
	                var i;
	                var ii;
	                var iii;
	                var funcolor=make_color_rgb(255,241,164)
	                for (ii=0;ii<13;ii++) {
	                    draw_sprite(spr_backbustrees,0,9+(239*ii)-obj_song.mm,137)
	                }
	                for (i=0;i<13;i++) {
	                    draw_sprite(spr_backbus,0,9+(345*i)-obj_song.m,137)
	                }
	                for (iii=0;iii<40;iii++) {
	                    draw_sprite(spr_tunnel,0,449+(92*iii)-obj_song.mmm,90)
	                }
	                image_index=0
	                draw_sprite(sprite_index,image_index,0,0) //base
	                draw_sprite_ext(sprite_index,image_index,0,0,1,1,0,c_black,(obj_song.mmm*0.05)-0.2) //dark 1
	                draw_sprite_ext(sprite_index,image_index,0,2,1,1,0,c_black,obj_song.mmm*0.05) //full dark
	                draw_sprite(sprite_index,2,0,0) //base
	                draw_sprite_ext(sprite_index,2,0,0,1,1,0,c_black,0.7) //dark 1
	                draw_sprite_ext(sprite_index,2,0,2,1,1,0,c_black,obj_song.mmm*0.05) //full dark
	            }
	            //effects
	            with(obj_player) {
	                image_alpha=0
	                if scr_shadercheck(shader_colorswap,c_white) {
	                    draw_sprite(sprite_index,image_index,x,y)
	                    shader_reset();
	                    draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_black,obj_song.mmm*0.05)
	                    scr_skinswapdude(funcolor)
	                        draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,0.20)
	                    shader_reset();
	                    draw_sprite_ext(sprite_index,image_index,x+4,y,1,1,0,c_black,0.40+obj_song.mmmm)
	                    scr_highlight(make_color_rgb(32,30,40),c_white)
	                        draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,obj_song.mmm*0.05)
	                    shader_reset();
	                } else {
	                    draw_sprite(sprite_index,image_index,x,y)
	                    draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_black,obj_song.mmm*0.05)
	                    draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,funcolor,0.20)
	                    draw_sprite_ext(sprite_index,image_index,x+4,y,1,1,0,c_black,0.40+obj_song.mmmm)
	                }
	            }
	            with(obj_badguy) {
	                image_alpha=0
	                draw_sprite(sprite_index,image_index,x,y)
	                draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_black,obj_song.mmm*0.05)
	                draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,funcolor,0.2)
	                draw_sprite_ext(sprite_index,image_index,x-4,y,1,1,0,c_black,0.4)
	                draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_black,obj_song.mmmm)
	            }
	            with(obj_lady) {
	                drawgirl=false
	                image_alpha=0
	                draw_sprite(sprite_index,image_index,x,y)
	                draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_black,obj_song.mmm*0.05)
	                draw_sprite_ext(spr_speakersscreenlightw2,1,x,y,1,1,0,c_white,1-obj_song.mmmm) 
	                draw_sprite(sprite[type],frame,x,y)
	                draw_sprite_ext(sprite[type],frame,x,y,1,1,0,c_black,obj_song.mmm*0.05)
	                draw_sprite_ext(sprite[type],frame,x,y,1,1,0,funcolor,0.20)
	                draw_sprite_ext(sprite[type],frame,x,y-4,1,1,0,c_black,0.40)
	                draw_sprite_ext(sprite[type],frame,x,y,1,1,0,c_black,obj_song.mmmm)
	            }
	        break;
	        case 7: //dude turn
	            //background
	            mmmm+=0.025
	            with(obj_backgroundp1) {
	                var i;
	                var ii;
	                var iii;
	                var funcolor=make_color_rgb(255,241,164)
	                for (ii=0;ii<13;ii++) {
	                    draw_sprite(spr_backbustrees,0,9+(239*ii)-obj_song.mm,139)
	                }
	                for (i=0;i<13;i++) {
	                    draw_sprite(spr_backbus,0,9+(345*i)-obj_song.m,139)
	                }
	                for (iii=0;iii<40;iii++) {
	                    draw_sprite(spr_tunnel,0,449+(92*iii)-obj_song.mmm,90)
	                }
	                image_index=0
	                draw_sprite(sprite_index,image_index,0,0) //base
	                draw_sprite_ext(sprite_index,image_index,0,0,1,1,0,c_black,(obj_song.mmm*0.05)-0.2) //dark 1
	                draw_sprite_ext(sprite_index,image_index,0,2,1,1,0,c_black,obj_song.mmm*0.05) //full dark
	                draw_sprite(sprite_index,2,0,0) //base
	                draw_sprite_ext(sprite_index,2,0,0,1,1,0,c_black,0.7) //dark 1
	                draw_sprite_ext(sprite_index,2,0,2,1,1,0,c_black,obj_song.mmm*0.05) //full dark
	            }
	            //effects
	            with(obj_player) {
	                image_alpha=0
	                if scr_shadercheck(shader_colorswap,c_white) {
	                    draw_sprite(sprite_index,image_index,x,y)
	                    shader_reset();
	                    draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_black,obj_song.mmm*0.05)
	                    scr_skinswapdude(funcolor)
	                        draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,0.20)
	                    shader_reset();
	                    draw_sprite_ext(sprite_index,image_index,x+4,y,1,1,0,c_black,0.40+obj_song.mmmm)
	                    scr_highlight(make_color_rgb(32,30,40),c_white)
	                        draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,obj_song.mmm*0.05)
	                    shader_reset();
	                } else {
	                    draw_sprite(sprite_index,image_index,x,y)
	                    draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_black,obj_song.mmm*0.05)
	                    draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,funcolor,0.20)
	                    draw_sprite_ext(sprite_index,image_index,x+4,y,1,1,0,c_black,0.40+obj_song.mmmm)
	                }
	            }
	            with(obj_badguy) {
	                image_alpha=0
	                draw_sprite(sprite_index,image_index,x,y)
	                draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_black,obj_song.mmm*0.05)
	                draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,funcolor,0.1)
	                draw_sprite_ext(sprite_index,image_index,x-4,y,1,1,0,c_black,0.2)
	                draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_black,obj_song.mmmm)
	            }
	            with(obj_lady) {
	                drawgirl=false
	                image_alpha=0
	                draw_sprite(sprite_index,image_index,x,y)
	                draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_black,obj_song.mmm*0.05)
	                draw_sprite_ext(spr_speakersscreenlightw2,0,x,y,1,1,0,c_white,1-obj_song.mmmm)
	                draw_sprite(sprite[type],frame,x,y)
	                draw_sprite_ext(sprite[type],frame,x,y,1,1,0,c_black,obj_song.mmm*0.05)
	                draw_sprite_ext(sprite[type],frame,x,y,1,1,0,funcolor,0.10)
	                draw_sprite_ext(sprite[type],frame,x,y-4,1,1,0,c_black,0.20)
	                draw_sprite_ext(sprite[type],frame,x,y,1,1,0,c_black,obj_song.mmmm)
	            }
	        break;
	        default:
	            //background
	            with(obj_backgroundp1) {
	                var i;
	                var ii;
	                for (ii=0;ii<13;ii++) {
	                    draw_sprite(spr_backbustrees,0,9+(239*ii)-obj_song.mm,139)
	                }
	                for (i=0;i<13;i++) {
	                    draw_sprite(spr_backbus,0,9+(345*i)-obj_song.m,139)
	                }
	                image_alpha=1
	                draw_self();
	                draw_sprite(spr_busback,2,0,0)
	            }
	            //characters
	            with(obj_lady) {
	                image_alpha=0
	                draw_sprite(sprite_index,image_index,x,y)
	                draw_sprite(spr_busow,0,224,296)
	            }
	            obj_player.image_alpha=1
	            obj_badguy.image_alpha=1
	        break;
	        }
	        //DANCE TIME!!
	        if event=2 {
	            var poop = sin(current_time/200)*2
	            draw_sprite_ext(spr_dancebreak,poop,obj_camera.x,obj_camera.y-100,1,1,0,c_black,1)
	            draw_sprite(spr_dancebreak,0,obj_camera.x,(obj_camera.y-100)+poop)
	        }
	        //CYAN
	        if event=8 or event=13 or event>=14{
	            //tint
	            var cyan=make_colour_rgb(55,223,232)
	            //background
	            with(obj_backgroundp1) {
	                draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,cyan,0.25)
	                var i;
	                var ii;
	                for (ii=0;ii<13;ii++) {
	                    draw_sprite(spr_backbustrees,0,9+(239*ii)-obj_song.mm,139)
	                    draw_sprite_ext(spr_backbustrees,0,9+(239*ii)-obj_song.mm,139,1,1,0,cyan,0.25)
	                }
	                for (i=0;i<13;i++) {
	                    draw_sprite(spr_backbus,0,9+(345*i)-obj_song.m,139)
	                    draw_sprite_ext(spr_backbus,0,9+(345*i)-obj_song.m,139,1,1,0,cyan,0.25)
	                }
	                image_alpha=0
	                draw_sprite(spr_busback,0,0,0)
	                draw_sprite_ext(spr_busback,0,0,0,1,1,0,cyan,0.25)
	                draw_sprite(spr_busback,2,0,0)
	                draw_sprite_ext(spr_busback,2,0,0,1,1,0,cyan,0.25)
	            }
	            with(obj_lady) {
	                drawgirl=false
	                image_alpha=0
	                draw_sprite(sprite_index,image_index,x,y)
	                draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,cyan,0.25)
	                draw_sprite(spr_speakersscreenlight,image_index,x,y)
	                draw_sprite_ext(sprite[type],frame,x,y,image_xscale,image_yscale,0,image_blend,1)
	                draw_sprite_ext(sprite[type],frame,x,y,image_xscale,image_yscale,0,cyan,0.25)
	                draw_sprite(spr_busow,0,224,296)
	                draw_sprite_ext(spr_busow,0,224,296,1,1,0,cyan,0.25)
	            }
	            with(obj_player) {
	                image_alpha=0
	                if scr_shadercheck(shader_colorswap,c_white) {
	                    draw_sprite(sprite_index,image_index,x,y)
	                    shader_reset();
	                    scr_skinswapdude(cyan)
	                        draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,0.25)
	                    shader_reset();
	                } else {
	                    draw_sprite(sprite_index,image_index,x,y)
	                    draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,cyan,0.25)
	                }
	            }
	            with(obj_badguy) {
	                image_alpha=0
	                draw_sprite(sprite_index,image_index,x,y,)
	                draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,cyan,0.25)
	            }
	            //screen bounce
	            if obj_midi_clock.div_4_trigger=true {
	                mmmmmm++
	                if mmmmmm%2=0 {
	                    obj_camera.image_angle=1
	                } else {
	                    obj_camera.image_angle=-1
	                }
	            }
	        }
	    break;
	    case "gamejack": //gamejack
	        if instance_exists(obj_note) {
	            obj_note.bombhit=false
	        }
	        var greencolor=make_color_rgb(27,114,24)
	        draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,make_color_rgb(192,192,192),1)
	        if event<8 { //intro
	            m+=0.25
	            if m=25 { m=0 }
	            draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,make_color_rgb(6,27,5),1)
	            for(i=0;i<50;i++) {
	                draw_sprite_ext(spr_whitepixel,0,0,m+(i*25),room_width,3,0,make_color_rgb(12,51,11),1)
	            }
	            with(obj_backgroundp1) {
	                draw_sprite(sprite_index,3,x,y)
	            }
	        }
	        switch(event) {
	            case 0:
	                obj_lady.image_alpha=0
	                obj_lady.drawgirl=false
	                obj_player.image_alpha=0
	                obj_badguy.image_alpha=0
	                draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,c_black,1)
	            break;
	            case 1:
	                with(obj_badguy) {
	                    draw_sprite_ext(sprite_index,obj_player.image_index,x,y,1,1,0,greencolor,1)
	                }
	            break;
	            case 2:
	                with(obj_badguy) {
	                    draw_sprite_ext(sprite_index,obj_player.image_index,x,y,1,1,0,greencolor,1)
	                }
	            break;
	            case 3:
	                with(obj_badguy) {
	                    draw_sprite_ext(sprite_index,obj_player.image_index,x,y,1,1,0,greencolor,1)
	                }
	                with(obj_lady) {
	                    draw_sprite_ext(sprite_index,image_index,x-45,y,1,1,0,greencolor,1)
	                }
	            break;
	            case 4:
	                with(obj_badguy) {
	                    draw_sprite_ext(sprite_index,obj_player.image_index,x,y,1,1,0,greencolor,1)
	                }
	                with(obj_lady) {
	                    draw_sprite_ext(sprite_index,image_index,x-45,y,1,1,0,greencolor,1)
	                }
	            break;
	            case 5:
	                with(obj_badguy) {
	                    draw_sprite_ext(sprite_index,obj_player.image_index,x,y,1,1,0,greencolor,1)
	                }
	                with(obj_lady) {
	                    draw_sprite_ext(sprite_index,image_index,x-45,y,1,1,0,greencolor,1)
	                }
	                with(obj_player) {
	                    draw_sprite_ext(sprite_index,image_index,x,y-95,1,1,0,greencolor,1)
	                    draw_sprite_ext(spr_msladyandwatch,image_index,x,y,1,1,0,greencolor,1)
	                }
	            break;
	            case 6:
	                with(obj_badguy) {
	                    draw_sprite_ext(sprite_index,obj_player.image_index,x,y,1,1,0,greencolor,1)
	                }
	                with(obj_lady) {
	                    draw_sprite_ext(sprite_index,image_index,x-45,y,1,1,0,greencolor,1)
	                }
	                with(obj_player) {
	                    draw_sprite_ext(sprite_index,image_index,x,y-95,1,1,0,greencolor,1)
	                    draw_sprite_ext(spr_msladyandwatch,image_index,x,y,1,1,0,greencolor,1)
	                }
	            break;
	            case 7:
	                with(obj_badguy) {
	                    draw_sprite_ext(sprite_index,obj_player.image_index,x,y,1,1,0,greencolor,1)
	                }
	                with(obj_lady) {
	                    draw_sprite_ext(sprite_index,image_index,x-45,y,1,1,0,greencolor,1)
	                }
	                with(obj_player) {
	                    draw_sprite_ext(sprite_index,image_index,x,y-95,1,1,0,greencolor,1)
	                    draw_sprite_ext(spr_msladyandwatch,image_index,x,y,1,1,0,greencolor,1)
	                }
	            break;
	            default:
	                //background
	                m+=1
	                mm+=0.25
	                if m>=344 {
	                    m=0
	                }
	                if mm>=238 {
	                    mm=0
	                }
	                with(obj_backgroundp1) {
	                    var i;
	                    var ii;
	                    for (ii=0;ii<13;ii++) {
	                        draw_sprite(spr_backbustrees,0,9+(239*ii)-obj_song.mm,139)
	                    }
	                    for (i=0;i<13;i++) {
	                        draw_sprite(spr_backbus,0,9+(345*i)-obj_song.m,139)
	                    }
	                    draw_self();
	                    draw_sprite(spr_busback,2,0,0)
	                }
	                //character stuff
	                with(obj_lady) {
	                    image_alpha=0
	                    draw_sprite(sprite_index,image_index,x,y)
	                    if obj_song.mmmmm>0 { //bomb note screen glitch
	                        randomize();
	                        var randomscreen=round(random(7))
	                        if randomscreen=1 {
	                            var screened=1
	                        } else {
	                            var screened=0
	                        }
	                        draw_sprite(spr_speakersscreenlightw2,2+screened,x,y)
	                        draw_sprite(spr_speakersscreenlightw2,4,x,y+(sin(current_time/200)))
	                        obj_song.mmmmm-=0.5
	                    }
	                    draw_sprite(spr_busow,0,224,296)
	                }
	                with(obj_badguy) {
	                    scr_drawcd(170,303);
	                    //scr_drawcd(64,235);
	                }
	            break;
	        }
	    break;
	    case "twinkle": //twinkle
	        //tv screen surface handling
	        var paralax=(((obj_camera.x/image_xscale)/4)-50) //tv screen paralaxing
	        //drawing sprites
	        draw_sprite(spr_buddyback,2,(((obj_camera.x/image_xscale)/3)-120),0)
	        draw_sprite_ext(spr_buddyback,2,(((obj_camera.x/image_xscale)/3)-120),0,1,1,0,c_black,mmmm)
	        mmmmm+=0.0025
	        if mmmmm=1 {
	            mmmmm=0
	        }
	        //drawing screens
	        var t;
	        for(t=0;t<=15;t++) {
	            if !surface_exists(screen[t,1]) {
	                screen[t,1]=surface_create(45,45)
	            }
	            switch(screen[t,0]) {
	                default: //fump
	                    surface_set_target(screen[t,1])
	                        draw_clear_alpha(c_black,0) //reset alpha
	                        draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,make_color_rgb(255,174,201),1)
	                        var l;
	                        var ll;
	                        for(l=0;l<5;l++) {
	                            for(ll=0;ll<5;ll++) {
	                                draw_sprite(spr_fump,0,(24*l)-(mmmmm*48),(24*ll)-(mmmmm*48))
	                            }
	                        }
	                    surface_reset_target();
	                break;
	                case "dark":
	                    surface_set_target(screen[t,1])
	                        draw_clear_alpha(c_black,0) //reset alpha
	                        draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,make_color_rgb(3,7,5),1)
	                    surface_reset_target();
	                break;
	                case "lightup":
	                    surface_set_target(screen[t,1])
	                        draw_clear_alpha(c_black,0) //reset alpha
	                        draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,make_color_rgb(3,7,5),1)
	                        m+=0.08
	                        draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,c_white,m)
	                        //switch to full on screen
	                        if  m>=1 screen[t,0]="light";
	                    surface_reset_target();
	                break;
	                case "light":
	                    surface_set_target(screen[t,1])
	                        draw_clear_alpha(c_black,0) //reset alpha
	                        draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,c_white,1)
	                    surface_reset_target();
	                break;
	                case "gogo":
	                    surface_set_target(screen[t,1])
	                        draw_clear_alpha(c_black,0) //reset alpha
	                        if mmmmmm%2=0 {
	                            var colorback=make_color_rgb(233,164,242)
	                            var colortext=make_color_rgb(249,249,157)
	                        } else {
	                            var colorback=make_color_rgb(249,249,157)
	                            var colortext=make_color_rgb(233,164,242)
	                        }
	                        draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,colorback,1)
	                        draw_set_halign(fa_center)
	                        draw_set_valign(fa_middle)
	                        //outline
	                        var txx
	                        var tyy
	                        for(txx=-1;txx<=1;txx++) {
	                            for(tyy=-1;tyy<=1;tyy++) {
	                                draw_text_colour(22+txx,22+tyy,string_hash_to_newline("GO!"),c_black,c_black,c_black,c_black,1)
	                                draw_text_colour(23+txx,23+tyy,string_hash_to_newline("GO!"),c_black,c_black,c_black,c_black,1)
	                            }
	                        }
	                        //text
	                        draw_text_colour(22,22,string_hash_to_newline("GO!"),colortext,colortext,colortext,colortext,1)
	                        draw_set_halign(fa_left)
	                        draw_set_valign(fa_top)
	                    surface_reset_target();
	                break;
	                case 0: //sun
	                    surface_set_target(screen[t,1])
	                        draw_clear_alpha(c_black,0) //reset alpha
	                        draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,make_color_rgb(122,200,222),1)
	                        var ear;
	                        for(ear=0;ear<=6;ear++) {
	                            draw_sprite(spr_w3sun,0,(ear*24)+(mmmmm*24),(ear*24)+(mmmmm*24))
	                        }
	                    surface_reset_target();
	                break;
	                case 1: //earth
	                    surface_set_target(screen[t,1])
	                        draw_clear_alpha(c_black,0) //reset alpha
	                        draw_sprite_ext(spr_blackpixel,0,0,0,45,45,0,c_white,1)
	                        //stars
                                
	                        //earth
	                        draw_sprite_ext(spr_earth,current_time/200,22,22,1,1,0,c_white,1)
	                    surface_reset_target();
	                break;
	                case 2: //4:04
	                    surface_set_target(screen[t,1])
	                        draw_clear_alpha(c_black,0) //reset alpha
	                        draw_sprite_ext(spr_blackpixel,0,0,0,45,45,0,c_white,1)
	                        if round(songpos)%2=0 {
	                            draw_set_color(c_red)
	                        } else {
	                            draw_set_color(c_black)
	                        }
	                        draw_set_valign(fa_middle)
	                        draw_set_halign(fa_center)
	                        draw_text(25,25,string_hash_to_newline("4:04"))
	                        draw_set_valign(fa_top)
	                        draw_set_halign(fa_left)
	                    surface_reset_target();
	                break;
	                case 3: //
	                    surface_set_target(screen[t,1])
	                        draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,make_color_rgb(233,118,158),1)
	                        draw_sprite_ext(spr_whitepixel,0,13,22+(sin((current_time/200)+4)),4,4,0,make_color_rgb(249,249,157),1)
	                        draw_sprite_ext(spr_whitepixel,0,17,22+(sin((current_time/200))),4,4,0,make_color_rgb(157,249,169),1)
	                        draw_sprite_ext(spr_whitepixel,0,22,22+(sin((current_time/200)-4)),4,4,0,make_color_rgb(233,164,242),1)
	                        draw_sprite_ext(spr_whitepixel,0,27,22+(sin((current_time/200)-8)),4,4,0,make_color_rgb(159,207,247),1)
	                    surface_reset_target(); 
	                break;
	                case 4: //zzz
	                    if !surface_exists(dingle) {
	                        dingle=surface_create(45,45)
	                    }
	                    surface_set_target(dingle)
	                        draw_clear_alpha(c_black,0) //reset alpha
	                        draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,make_color_rgb(3,7,5),1)
	                        draw_set_valign(fa_middle)
	                        draw_set_color(c_white)
	                        draw_text((mmmmm*14)-28,22,string_hash_to_newline("zzzzzzzzzzzzzzzzzz"))
	                        draw_set_valign(fa_top)
	                    surface_reset_target();
	                    surface_set_target(screen[t,1])
	                        draw_surface_ext(dingle,0,5,1,1,15,c_white,1)
	                    surface_reset_target();
	                break;
	                case 5: //funne's grimace
	                    surface_set_target(screen[t,1])
	                        draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,make_color_rgb(59,59,59),1)
	                        draw_sprite(spr_grimace,0,22,22)
	                    surface_reset_target(); 
	                break;
	                case 6: //cool screen
	                    surface_set_target(screen[t,1])
	                        draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,make_color_rgb(3,7,5),1)
	                        draw_sprite_ext(spr_w3coolscreen,0,25,22,1+((sin(current_time/200))/4),1+((sin(current_time/400))/4),0,c_white,1)
	                    surface_reset_target();
	                break;
	                case 7: //rainbow eggs
	                    surface_set_target(screen[t,1])
	                        var xx;
	                        var yy;
	                        for(xx=0;xx<=25;xx++) {
	                            for(yy=0;yy<=25;yy++) {
	                                draw_sprite_ext(spr_whitepixel,0,xx*2,yy*2,2,2,0,make_color_hsv(((current_time/6400)+xx+yy)*255,127,255),1)
	                            } //make_color_hsv(sin(((current_time/800))+(xx/2))*255
	                        }
	                        //egg
	                        var e;
	                        for(e=0;e<=12;e++) {
	                                if e=4 {
	                                beginstocrack=1
	                                } else {
	                                beginstocrack=0
	                                }
	                            draw_sprite_ext(spr_w3egg,beginstocrack,(e*13)-(mmmmm*78),22,1,1,0,make_color_hsv((e/6)*255,127,255),1)
	                        }
	                    surface_reset_target();
	                break;
	                case 8: //crazy johnny
	                    surface_set_target(screen[t,1])
	                        draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,make_color_rgb(153,217,234),1)
	                        draw_sprite(spr_crazyjohnny,0,22,22+(round(sin(current_time/200))))
	                    surface_reset_target();
	                break;
	                case 9: //cool line graph
	                    surface_set_target(screen[t,1])
	                        draw_clear_alpha(c_black,0) //reset alpha
	                        draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,c_white,1)
	                        var g;
	                        for(g=0;g<=6;g++) {
	                            draw_sprite_ext(spr_whitepixel,0,0,g*8,45,1,0,c_black,0.05)
	                            draw_sprite_ext(spr_whitepixel,0,(g*8)-(mmmmm*8),0,1,45,0,c_black,0.25)
	                        }
	                        //line
	                        var l;
	                        for(l=0;l<=45;l++) {
	                            draw_sprite_ext(spr_whitepixel,0,l,22+(sin((current_time/210)+(l/2))*4),2,2,0,c_gray,1)
	                        }
	                    surface_reset_target();
	                break;
	                case 10: //moon
	                    surface_set_target(screen[t,1])
	                        draw_clear_alpha(c_black,0) //reset alpha
	                        draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,make_color_rgb(29,34,54),1)
	                        var ear;
	                        for(ear=0;ear<=6;ear++) {
	                            draw_sprite(spr_w3moon,0,(ear*24)+(mmmmm*24),(ear*24)+(mmmmm*24))
	                        }
	                    surface_reset_target();
	                break;
	                case 11: //varmint
	                    surface_set_target(screen[t,1])
	                        draw_clear_alpha(c_black,0) //reset alpha
	                        draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,make_color_rgb(255,217,174),1)
	                        draw_sprite(spr_varmint,0,22,22+(sin(current_time/200)))
	                    surface_reset_target();
	                break;
	                case 12: //scary face
	                    surface_set_target(screen[t,1])
	                        draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,make_color_hsv(103+(mmmmm*255),73,155),1)
	                        draw_sprite(spr_wegiel,0,22,22)
	                    surface_reset_target();
	                break;
	                case 13: //yownloader
	                    surface_set_target(screen[t,1])
	                    draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,c_black,1)
	                    //draw_rectangle
	                    var jeff=make_color_rgb(27,114,24)
	                    draw_set_color(jeff)
	                    draw_rectangle(8,29,36,33,true)
	                    //draw bar
	                    draw_sprite_ext(spr_whitepixel,0,9,30,(songpos/audio_sound_length(songplaying))*20,4,0,jeff,1)
	                    draw_sprite_ext(spr_logdisc,0,22,19,sin(current_time/400),1,0,jeff,1)
	                    draw_set_color(c_white)
	                    surface_reset_target();
	                break;
	                case 14: //
	                    surface_set_target(screen[t,1])
	                    draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,c_blue,1)
	                    draw_sprite_ext(spr_w3,0,22,22,1,1,0,c_black,1)
	                    surface_reset_target();
	                break;
	                case "ray":
	                    surface_set_target(screen[t,1])
	                        draw_clear_alpha(c_black,0) //reset alpha
	                        draw_sprite(spr_rayplaceholder,0,0,0)
	                    surface_reset_target();
	                break;
	                surface_reset_target();
	            }
	        }
	        //actually draw them
	        draw_surface_part(screen[0,1],0,0,42,40,41+paralax,132) //far left green
	        draw_surface_part(screen[1,1],5,5,37,33,103+paralax,121) //top middle purple
	        draw_surface_part(screen[2,1],11,14,27,22,160+paralax,150) //blue
	        draw_surface_part(screen[3,1],7,10,30,26,147+paralax,191) //bottom purple
	        draw_surface_part(screen[4,1],6,9,33,26,203+paralax,166) //the only green screen on the left side
	        draw_surface_part(screen[5,1],11,11,23,21,311+paralax,171) //left far purple
	        draw_surface_part(screen[6,1],3,6,37,28,360+paralax,138) //right top blue
	        draw_surface_part(screen[7,1],4,8,36,27,372+paralax,180) //right top bottom green, y'know?
	        draw_surface_part(screen[8,1],4,5,37,33,421+paralax,121) //right purple top
	        draw_surface_part(screen[9,1],7,9,29,25,430+paralax,175) //right purple bottom
	        draw_surface_part(screen[10,1],6,7,41,38,478+paralax,133) //far far green
	        draw_surface_part(screen[11,1],12,11,22,23,483+paralax,191) //bottom right blue
	        draw_sprite(spr_buddyback,1,(((obj_camera.x/image_xscale)/4)-50),0)
	        draw_surface_part(screen[12,1],7,8,30,28,25,271) //right front
	        draw_surface_part(screen[13,1],3,10,38,26,117,207) //middle front
	        draw_surface_part(screen[14,1],15,17,28,25,466,267) //middle left
	        //drawing MORE sprites :3
	        mmmm+=(mmm-mmmm)/10
	        draw_sprite(spr_buddyback,0,0,0)
	        draw_sprite_ext(spr_buddyback,1,(((obj_camera.x/image_xscale)/4)-50),0,1,1,0,c_black,mmmm)
	        draw_sprite_ext(spr_buddyback,0,0,0,1,1,0,c_black,mmmm)
	        with(obj_lady) {
	            drawgirl=false
	            image_alpha=0
	            draw_sprite(spr_speakeroff,image_index,x,y)
	            draw_sprite_ext(spr_speakeroff,image_index,x,y,1,1,0,c_black,obj_song.mmmm)
	            draw_sprite_ext(spr_speakeroff,image_index,x,y+5,1,1,0,c_black,obj_song.mmmm)
	            //draw cd boy
	            draw_sprite_ext(sprite[type],frame,x,y,image_xscale,image_yscale,0,c_white,1)
	            draw_sprite_ext(sprite[type],frame,x,y,image_xscale,image_yscale,0,c_black,obj_song.mmmm)
	            draw_sprite_ext(sprite[type],frame,x,y+5,image_xscale,image_yscale,0,c_black,obj_song.mmmm)
	        }
	        with(obj_player) {
	            image_alpha=0
	            scr_shadercheck(shader_colorswap,c_white)
	                draw_sprite(sprite_index,image_index,x,y)
	            shader_reset();
	            draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_black,obj_song.mmmm)
	            draw_sprite_ext(sprite_index,image_index,x,y+5,1,1,0,c_black,obj_song.mmmm)
	            if scr_shadercheck(sh_highlight,make_color_rgb(32,30,40),c_white) {
	                draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,obj_song.mmmm)
	            shader_reset();
	            }
	        }
	        with(obj_badguy) {
	            image_alpha=0
	            draw_sprite(sprite_index,image_index,x,y)
	            draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_black,obj_song.mmmm)
	            draw_sprite_ext(sprite_index,image_index,x,y+5,1,1,0,c_black,obj_song.mmmm)
	        }
	        //anime
	        if event>=30 && event<=33 {
	            if paused=false {
	                mm+=0.005
	                if mmm!=1 && event!=33 {
	                    mmmmmmm+=0.02
	                    if event=32 {
	                        mmm+=0.02
	                    }
	                    //clamps
	                    mmmmmmm=clamp(mmmmmmm,0,1)
	                } else {
	                    mmmmmmm=0
	                    if event=33 {
	                        mmm-=0.02
	                    }
	                }
	            }
	            //buddy
	            if surface_exists(buddyasurf) {
	                surface_set_target(buddyasurf)
	                    draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,c_white,1)
	                    draw_sprite_ext(buddyanime.sprite_index,buddyanime.image_index,262+(mm*4),400,1,1,0,c_white,1)
	                    var l;
	                    for(l=2;l<=7;l++) {
	                        if buddyanime.sprite_index=buddyanime.anim[l] {
	                            draw_sprite_ext(spr_earth,current_time/200,125+(mm*4),118,6,6,0,c_white,1)
	                        }
	                    }
	                    draw_sprite_ext(spr_blackpixel,0,0,400,800,-50,0,c_black,1)
	                    draw_sprite_ext(spr_blackpixel,0,0,0,800,50,0,c_black,1)
	                surface_reset_target();
	                draw_surface_ext(buddyasurf,obj_camera.x-200,obj_camera.y-200,1,1,0,c_white,mmmmmmm)
	            } else {
	                buddyasurf=surface_create(400,400)
	            }
	            //dude
	            if surface_exists(dudeasurf) {
	                surface_set_target(dudeasurf)
	                    draw_clear_alpha(c_black,0)
	                    draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,c_white,1)
	                    draw_sprite_ext(spr_animelady,0,262-(mm*4),200,1,1,0,c_white,1)
	                    scr_shadercheck(shader_colorswap,c_white)
	                        draw_sprite_ext(dudeanime.sprite_index,dudeanime.image_index,100-mm*4,360,1,1,0,c_white,1)
	                    shader_reset();
	                    draw_sprite_ext(spr_blackpixel,0,0,400,800,-50,0,c_black,1)
	                    draw_sprite_ext(spr_blackpixel,0,0,0,800,50,0,c_black,1)
	                surface_reset_target();
	                draw_surface_ext(dudeasurf,obj_camera.x-200,obj_camera.y-200,1,1,0,c_white,mmm)
	            } else {
	                dudeasurf=surface_create(400,400)
	            } 
	        }
	    break;
	    case "tsunami": //tsunami
	        //tv screen surface handling
	        var paralax=(((obj_camera.x/image_xscale)/4)-50) //tv screen paralaxing
	        var scarysin=round(2*(sin(current_time/350)))
	        var scarysin2=round(2*(sin((current_time-300)/350)))
	        //var colorcool1=make_color_rgb(85,0,36)
	        //var colorcool2=make_color_rgb(100,0,26)
	        //var colorcool1=make_color_hsv(153,240,182)//make_color_rgb(132,153,255)
	        //var colorcool2=make_color_hsv(151,240,30)//make_color_rgb(0,15,64)
	        //cool coloring
	        switch(mmmmmmm) {
	            case 0:
	                var colorbase1=make_colour_rgb(0,0,0)
	                var colorbase2=make_colour_rgb(0,0,0)
	                var colorgo1=make_colour_rgb(0,0,0)
	                var colorgo2=make_colour_rgb(0,0,0)
	            break;
	            case 1:
	                var colorbase1=make_colour_rgb(0,0,0)
	                var colorbase2=make_colour_rgb(0,0,0)
	                var colorgo1=make_colour_rgb(75,46,112)
	                var colorgo2=make_colour_rgb(75/70,46/70,112/70)
	            break;
	            case 2:
	                var colorbase1=make_colour_rgb(75,46,112)
	                var colorbase2=make_colour_rgb(75/70,46/70,112/70)
	                var colorgo1=make_colour_rgb(0,0,0)
	                var colorgo2=make_colour_rgb(0,0,0)
	            break;
	            case 3: //cdboy green
	                var colorbase1=make_colour_rgb(0,0,0)
	                var colorbase2=make_colour_rgb(0,0,0)
	                var colorgo1=make_colour_rgb(144,222,133)
	                var colorgo2=make_colour_rgb(1,16,10)//(7,24,16)
	            break;
	            case 4:
	                var colorbase1=make_colour_rgb(144,222,133)
	                var colorbase2=make_colour_rgb(1,16,10)
	                var colorgo1=make_colour_rgb(255,255,255)
	                var colorgo2=make_colour_rgb(5,6,10)
	            break;
	            case 6: //cyan
	                var colorbase1=make_color_hsv(153,240,182)
	                var colorbase2=make_color_hsv(151,240,30)
	                var colorgo1=make_colour_rgb(55,223,232)
	                var colorgo2=make_color_rgb(10/2,53/2,65/2)
	            break;
	            case 7:
	                var colorbase1=make_colour_rgb(55,223,232)
	                var colorbase2=make_color_rgb(10/2,53/2,65/2)
	                var colorgo1=make_colour_rgb(0,0,0)
	                var colorgo2=make_color_rgb(0,0,0)
	            break;
	            case 8:
	                var colorbase1=make_colour_rgb(0,0,0)
	                var colorbase2=make_color_rgb(0,0,0)
	                var colorgo1=make_color_hsv(153,240,182)
	                var colorgo2=make_color_hsv(151,240,30)
	            break;
	            case 10:
	                var colorbase1=make_color_hsv(153,240,182)
	                var colorbase2=make_color_hsv(151,240,30)
	                var colorgo1=make_colour_rgb(0,0,0)
	                var colorgo2=make_color_rgb(0,0,0)
	            break;
	            case 11:
	                var colorbase1=make_color_hsv(153,240,182)
	                var colorbase2=make_color_hsv(151,240,30)
	                var colorgo1=make_colour_rgb(255,255,255)
	                var colorgo2=make_colour_rgb(5,6,10)
	            break;
	            case 12:
	                var colorbase1=make_colour_rgb(255,255,255)
	                var colorbase2=make_colour_rgb(5,6,10)
	                var colorgo1=make_color_rgb(85,0,36)
	                var colorgo2=make_color_rgb(30,0,7)
	            break;
	            case 13:
	                var colorbase1=make_color_rgb(85,0,36)
	                var colorbase2=make_color_rgb(30,0,7)
	                var colorgo1=make_colour_rgb(144,222,133)
	                var colorgo2=make_colour_rgb(1,16,10)//(7,24,16)
	            break;
	            default:
	                var colorbase1=make_color_hsv(153,240,182)
	                var colorbase2=make_color_hsv(151,240,30)
	                var colorgo1=make_color_hsv(153,240,182)
	                var colorgo2=make_color_hsv(151,240,30)
	            break;
	        }
	        mmmm+=(1-mmmm)/30 
	        var colorcool1=merge_color(colorbase1,colorgo1,mmmm)
	        var colorcool2=merge_color(colorbase2,colorgo2,mmmm)
	        //drawing sprites
	        if event=1 {
	            //floating
	            var cdfloat=sin(current_time/-200)
	            var bfloat=cos(current_time/200)
	            //tv screens
	            var background=surface_create(200,200)
	            var scarystartv=surface_create(296,124)
	            surface_set_target(scarystartv) //stars
	                draw_clear_alpha(c_black,0) //reset alpha
	                var stary;
	                for(stary=0;stary<sprite_get_height(spr_hell);stary++) {
	                    var starsin=sin((current_time/800)+(stary/25))*15;
	                    draw_sprite_part_ext(spr_hell,1,0,stary,sprite_get_width(spr_nightskyfromgoogle),1,starsin-15,obj_backgroundp1.y+stary,2,1,c_white,1)
	                }
	            surface_reset_target();
	            surface_set_target(background) //background
	                draw_clear_alpha(c_black,0) //reset alpha
	                //var g1=make_color_hsv(93,39,32)
	                var g1=make_color_hsv(86,240,13)
	                var g2=make_color_hsv(91,151,32)
	                draw_rectangle_colour(0,0,200,200,g1,g1,g2,g2,false)
	                draw_surface_part(scarystartv,13,40,34,24,29,44)
	                draw_surface_part(scarystartv,13,73,35,31,15,68)
	                draw_surface_part(scarystartv,13,89,39,28,17,122)
	                draw_surface_part(scarystartv,240,40,34,24,137,44)
	                draw_surface_part(scarystartv,240,73,35,31,150,68)
	                draw_surface_part(scarystartv,240,89,39,28,144,122)
	                draw_sprite_ext(spr_backstars,0,100,100,1,1,0,c_white,1)
	            surface_reset_target();
	            draw_surface_ext(background,obj_camera.x-200,bfloat+obj_camera.y-200,2,2,0,c_white,1)
	            surface_free(scarystartv);
	            surface_free(background);
	            //everything else
	            draw_sprite_ext(obj_badguy.sprite_index,obj_badguy.image_index,obj_camera.x,cdfloat+obj_camera.y+200,2,2,0,c_white,1)
	            draw_sprite_ext(obj_badguy.sprite_index,obj_badguy.image_index,obj_camera.x,cdfloat+obj_camera.y+200,2,2,0,make_color_hsv(57,219,108),0.25)
	            draw_sprite_ext(obj_badguy.sprite_index,obj_badguy.image_index,obj_camera.x,cdfloat+obj_camera.y+200,1.8,1.9,0,c_black,0.6)
	            if scr_shadercheck(sh_highlight,c_white,c_white) {
	                draw_sprite_ext(obj_badguy.sprite_index,obj_badguy.image_index,obj_camera.x,cdfloat+obj_camera.y+200,2,2,0,c_white,1)
	                shader_reset();
	            }
	            draw_sprite_ext(spr_blackpixel,0,0,(obj_camera.y)+200,800,-50,0,c_black,1)
	            draw_sprite_ext(spr_blackpixel,0,0,(obj_camera.y)-200,800,50,0,c_black,1)
	        } else {
	            draw_sprite(spr_buddyback,2,(((obj_camera.x/image_xscale)/3)-120),scarysin2)
	            draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,1,colorcool2,0.31)
	            mmmmm+=0.0025
	            if mmmmm=1 {
	                mmmmm=0
	            }
	            //drawing screens
	            var t;
	            for(t=0;t<=15;t++) {
	                switch(screen[t,0]) {
	                    case "fump": //fump
	                        screen[t,1]=surface_create(45,45)
	                        surface_set_target(screen[t,1])
	                            draw_clear_alpha(c_black,0) //reset alpha
	                            draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,make_color_rgb(255,174,201),1)
                                    
	                            //m-=0.005
	                            //if m<=-48 {
	                            //    m=0
	                            //}
                                    
	                            var l;
	                            var ll;
	                            for(l=0;l<5;l++) {
	                                for(ll=0;ll<5;ll++) {
	                                    draw_sprite(spr_fump,0,(24*l)-(mmmmm*48),(24*ll)-(mmmmm*48))
	                                }
	                            }
	                        surface_reset_target();
	                    break;
	                    case "intro":
	                        screen[t,1]=surface_create(45,45)
	                        surface_set_target(screen[t,1])
	                            draw_clear_alpha(c_black,0) //reset alpha
	                            draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,c_blue,1)
	                        surface_reset_target();
	                    break;
	                    case "dark":
	                        screen[t,1]=surface_create(45,45)
	                        surface_set_target(screen[t,1])
	                            draw_clear_alpha(c_black,0) //reset alpha
	                            draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,make_color_rgb(3,7,5),1)
	                        surface_reset_target();
	                    break;
	                    case "white":
	                        screen[t,1]=surface_create(45,45)
	                        surface_set_target(screen[t,1])
	                            //draw_clear_alpha(c_black,0) //reset alpha
	                            draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,make_color_rgb(3,7,5),1)
	                            draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,c_white,0.75+((sin(current_time/200))/5))
	                        surface_reset_target();
	                    break;
	                    case "boom-boom":
	                        screen[t,1]=surface_create(45,45)
	                        surface_set_target(screen[t,1])
	                            //draw_clear_alpha(c_black,0) //reset alpha
	                            if m%2=1 && obj_midi_clock.div_4_trigger=true {
	                                mmm=1
	                            }
	                            mmm-=0.0025
	                            draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,make_color_rgb(15,17,51),1)
	                            draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,make_color_rgb(18,18,218),mmm)
	                        surface_reset_target();
	                    break;
	                    case "bo-bo-bo-bo":
	                        screen[t,1]=surface_create(45,45)
	                        surface_set_target(screen[t,1])
	                            //draw_clear_alpha(c_black,0) //reset alpha
	                            if obj_midi_clock.div_4_trigger=true {
	                                if m%2=1 {
	                                    mmm=1
	                                } else {
	                                    mmmmmm=1
	                                }
	                            }
	                            mmm-=0.0025
	                            mmmmmm-=0.0025
	                            draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,make_color_rgb(15,17,51),1)
	                            draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,make_color_rgb(18,18,218),mmm)
	                            draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,make_color_rgb(107,107,231),mmmmmm)
	                        surface_reset_target();
	                    break;
	                    case "static":
	                        mmmmmmm+=0.0025
	                        if mmmmmmm=1 {
	                            mmmmmmm=0
	                            for(tv=0;tv<=15;tv++) {
	                                screen[tv,0]=1+round(random(4))
	                            }
	                        }
	                        //draw screen
	                        screen[t,1]=surface_create(45,45)
	                        surface_set_target(screen[t,1])
	                            draw_clear_alpha(c_black,0) //reset alpha
	                            if round(current_time)%2=1{
	                                var left=1
	                            } else {
	                                var left=-1
	                            }
	                            draw_sprite_ext(spr_3static,0,25,25,1,left,0,c_white,1)
	                        surface_reset_target();
	                    break;
	                    case "earth": //earth
	                        screen[t,1]=surface_create(45,45)
	                        surface_set_target(screen[t,1])
	                            draw_clear_alpha(c_black,0) //reset alpha
	                            draw_sprite_ext(spr_blackpixel,0,0,0,45,45,0,c_white,1)
	                            //earth
	                            draw_sprite(spr_earth,current_time/200,22,22)
	                        surface_reset_target();
	                    break;
	                    case "colorlight":
	                        screen[t,1]=surface_create(45,45)
	                        surface_set_target(screen[t,1])
	                            draw_clear_alpha(c_black,0) //reset alpha
	                            draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,colorcool1,1)
	                        surface_reset_target();
	                    break;
	                    default:
	                        screen[t,1]=surface_create(45,45)
	                        surface_set_target(screen[t,1])
	                            draw_clear_alpha(c_black,0) //reset alpha
	                            draw_sprite_ext(spr_whitepixel,0,0,0,45,45,0,make_color_rgb(34,34,34),1)
	                            draw_sprite(spr_tsunamiscreen,screen[t,0],25,25)
	                        surface_reset_target();
	                    break;
	                }
	            }
	            //actually draw them
	            draw_surface_part(screen[0,1],0,0,42,40,41+paralax,132+scarysin) //far left green
	            draw_surface_part(screen[1,1],5,5,37,33,103+paralax,121+scarysin) //top middle purple
	            draw_surface_part(screen[2,1],11,14,27,22,160+paralax,150+scarysin) //blue
	            draw_surface_part(screen[3,1],7,10,30,26,147+paralax,191+scarysin) //bottom purple
	            draw_surface_part(screen[4,1],6,9,33,26,203+paralax,166+scarysin) //the only green screen on the left side
	            draw_surface_part(screen[5,1],11,11,23,21,311+paralax,171+scarysin) //left far purple
	            draw_surface_part(screen[6,1],3,6,37,28,360+paralax,138+scarysin) //right top blue
	            draw_surface_part(screen[7,1],4,8,36,27,372+paralax,180+scarysin) //right top bottom green, y'know?
	            draw_surface_part(screen[8,1],4,5,37,33,421+paralax,121+scarysin) //right purple top
	            draw_surface_part(screen[9,1],7,9,29,25,430+paralax,175+scarysin) //right purple bottom
	            draw_surface_part(screen[10,1],6,7,41,38,478+paralax,133+scarysin) //far far green
	            draw_surface_part(screen[11,1],12,11,22,23,483+paralax,191+scarysin) //bottom right blue
	            draw_sprite_ext(spr_buddyback,1,(((obj_camera.x/image_xscale)/4)-50),scarysin,1,1,0,c_white,1)
	            draw_sprite_ext(spr_buddyback,1,(((obj_camera.x/image_xscale)/4)-50),scarysin,1,1,0,colorcool1,0.15)
	            draw_surface_part(screen[12,1],7,8,30,28,25,271) //right front
	            draw_surface_part(screen[13,1],3,10,38,26,117,207) //middle front
	            draw_surface_part(screen[14,1],15,17,28,25,466,267) //middle left
	            //free surfaces
	            var v;
	            for(v=0;v<=15;v++) {
	                surface_free(screen[v,1])
	            }
	            //drawing MORE sprites :3
	            //mmmm+=(mmm-mmmm)/10 
	            draw_sprite(spr_buddyback,0,0,0)
	            scr_shadercheck(sh_silhouette,colorcool2)
	            draw_sprite_ext(spr_buddyback,0,0,0,1,1,0,colorcool2,0.5)
	            shader_reset();
	            with(obj_lady) {
	                drawgirl=false
	                image_alpha=0
	                draw_sprite(spr_speakeroff,image_index,x,y)
	                scr_shadercheck(sh_silhouette,colorcool2)
	                draw_sprite_ext(spr_speakeroff,image_index,x,y,1,1,0,colorcool2,0.41)
	                shader_reset();
	            }
	            //buddy
	            with(obj_nermal) {
	                image_alpha=0
	                draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_xscale,0,c_white,1)
	                if scr_shadercheck(sh_silhouette,colorcool1) {
	                    draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_xscale,0,c_white,0.14)
	                    shader_reset();
	                    scr_silhouette(colorcool2)
	                        draw_sprite_ext(sprite_index,image_index,x+4,y+4,image_xscale,image_xscale,0,c_white,0.41)
	                    shader_reset();
	                } else {
	                    draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_xscale,0,colorcool1,0.14)
	                }
	                draw_sprite_ext(sprite_index,image_index,x+4,y+4,image_xscale,image_xscale,0,c_black,0.34)
	            }
	            //player
	            with(obj_player) {
	                image_alpha=0
	                if scr_shadercheck(shader_colorswap,c_white) {
	                    draw_sprite(sprite_index,image_index,x,y)
	                    shader_reset();
	                    scr_silhouette(colorcool1)
	                        draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,0.14)
	                    shader_reset();
	                    scr_silhouette(colorcool2)
	                        draw_sprite_ext(sprite_index,image_index,x+4,y+4,1,1,0,c_white,0.41)
	                    shader_reset();
	                    draw_sprite_ext(sprite_index,image_index,x+4,y+4,1,1,0,c_black,0.34)
	                    scr_highlight(make_color_rgb(32,30,40),c_white)
	                        draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,1)
	                    shader_reset();
	                } else {
	                    draw_sprite(sprite_index,image_index,x,y)
	                    draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,colorcool1,0.14)
	                    draw_sprite_ext(sprite_index,image_index,x+4,y+4,1,1,0,c_black,0.34)
	                }
	            }
	            //funny story here,
	            //cd boy's shirt glowing here wasn't actually intentional but
	            //it looks cool so I kept it :P
	            with(obj_badguy) {
	                if idle[0]=spr_cdboyidle { //normal cd boy
	                    if !surface_exists(cdboy) {
	                        cdboy=surface_create(200,200);
	                    }
	                    surface_set_target(cdboy)
	                    draw_clear_alpha(c_black,0) //reset alpha
	                        scr_drawcd(100,195);
	                    surface_reset_target();
	                    //draw cd boy surfaces
	                    var cdx=55
	                    var cdy=120
	                    draw_surface(cdboy,cdx,cdy)
	                    if scr_shadercheck(sh_silhouette,colorcool1) {
	                        draw_surface_ext(cdboy,cdx,cdy,1,1,0,c_white,0.14)
	                        shader_reset();
	                        scr_silhouette(colorcool2)
	                            draw_surface_ext(cdboy,cdx-4,cdy+4,1,1,0,c_white,0.41)
	                        shader_reset();
	                        draw_surface_ext(cdboy,cdx-4,cdy+4,1,1,0,c_black,0.34)
	                        scr_highlight(c_white,c_white)
	                            draw_surface_ext(cdboy,cdx,cdy,1,1,0,c_white,1)
	                        shader_reset();
	                    } else {
	                        draw_surface_ext(cdboy,cdx,cdy,1,1,0,colorcool1,0.14)
	                        draw_surface_ext(cdboy,cdx-4,cdy+4,1,1,0,c_black,0.34)
	                    }
	                } else { //crazy cd boy
	                    image_alpha=0
	                    draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_xscale,0,c_white,1)
	                    if scr_shadercheck(sh_silhouette,colorcool1) {
	                        draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_xscale,0,c_white,0.14)
	                        shader_reset();
	                        scr_silhouette(colorcool2)
	                            draw_sprite_ext(sprite_index,image_index,x-4,y+4,image_xscale,image_xscale,0,c_white,0.41)
	                        shader_reset();
	                        draw_sprite_ext(sprite_index,image_index,x-4,y+4,image_xscale,image_xscale,0,c_black,0.34)
	                        //eyes and shirt
	                        scr_highlight(c_white,c_white)
	                            draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_xscale,0,c_white,1)
	                        shader_reset();
	                    } else {
	                        draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_xscale,0,colorcool1,0.14)
	                        draw_sprite_ext(sprite_index,image_index,x-4,y+4,image_xscale,image_xscale,0,c_black,0.34)
	                    }
	                }
	            }
	        }
	        //buddy notes
	        with(obj_note) {
	            if note>(obj_song.notes-1) && type=3 {
	                obj_note.bombhit=false
	                bombsprite=spr_notes3
	            }
	        }
	    break;
	    case "satellite": //satellite
	        //make cyan's notes normal (not nermal)
	        with(obj_note) {
	            bombhit=false
	            if type=3 {
	                bombsprite=spr_notes
	            }
	        }
	        var coolcolor1=make_color_hsv(123,240,196)
	        //background stars
	        with(obj_backgroundp1) {
	            image_alpha=0
	            //stars
	            var l;
	            for(l=0;l<=300;l++) {
	                var ll=l/25
	                draw_sprite_part(sprite_index,1,0,l,sprite_width,1,round(exp(l*0.01)*(sin(current_time/700+ll))),l)
	            }
	            //back stage
	            draw_sprite(sprite_index,2,x,y)
	            draw_sprite_ext(sprite_index,2,x,y,1,1,0,c_black,0.35)
	            draw_sprite(sprite_index,3,x,y)
	        }
	        //BLIMP!!!!
	        m+=0.25
	        if m>=1100 {
	            m=-100
	        }
	        //draw_sprite(spr_gunkblimp,0,m,40)
	        var b;
	        for(b=0;b<72;b++) {
	            var sine=round(((sin(current_time/400+(b/(1/25))))*2))
	            //a friend of mine told me that "b/(1/25)" is just b*25 with extra steps.
	            //and I was going to fix it but he was
	            //being a dingus about it so I'm keeping it in
	            draw_sprite_part(spr_gunkblimp,0,b,0,1,32,x-71+b+m,50+sine)
	        }
	        draw_sprite_part(spr_gunkblimp,0,72,0,143,32,x+m,50)
	        //background stage
	        with(obj_backgroundp1) {
	            draw_sprite_ext(spr_whitepixel,0,0,358,room_width,room_height,0,make_colour_rgb(48,46,61),1)
	            draw_sprite(sprite_index,image_index,x,y)
	            draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_black,0.35)
	            draw_sprite(sprite_index,4,x,y)
	            draw_sprite(spr_gunkfans,0,x,sprite_height+(sin(current_time/200)))
	        }
	        with(obj_lady) {
	            image_alpha=0
	            drawgirl=false
	            draw_sprite(sprite_index,image_index,x,y)
	            draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,coolcolor1,0.4)
	            draw_sprite_ext(sprite_index,image_index,x,y+4,1,1,0,c_black,0.30)
	            draw_sprite(spr_speakersscreenlight,image_index,x,y)
	            if obj_song.event!=4 { //cyan and lady can't be in two places at once
	                draw_sprite(sprite[type],frame,x,y)
	                draw_sprite_ext(sprite[type],frame,x,y,1,1,0,coolcolor1,0.4)
	                draw_sprite_ext(sprite[type],frame,x,y+4,1,1,0,c_black,0.30)
	            }
	        }
	        if event=4 { //dance break
	            var poop=sin(current_time/200)*2;
	            //mm+=0.0175
	            mm++
	            if paused=false {
	                if obj_badguy.sprite_index=spr_gunkw4d1 or obj_badguy.sprite_index=spr_gunkw4d2 {
	                    //obj_badguy.y=mmm-(sin(mm*(pi*2))*20)
	                    obj_badguy.y=mmm-round(abs(((sin(0.135263017097*mm))*20)))
	                }
	            } else {
	                obj_badguy.y=mmm
	            }
	            with(obj_mimic) {
	                if sprite_index=spr_cyanneru {
	                    draw_sprite(sprite_index,current_time/100,x,y)
	                    draw_sprite_ext(sprite_index,current_time/100,x,y,1,1,0,coolcolor1,0.4)
	                    draw_sprite_ext(sprite_index,current_time/100,x,y+4,1,1,0,c_black,0.30)
	                } else {
	                    image_alpha=0
	                    draw_sprite(sprite_index,image_index,x,y)
	                    draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,coolcolor1,0.4)
	                    draw_sprite_ext(sprite_index,image_index,x,y+4,1,1,0,c_black,0.30)
	                }
	            }
	            draw_sprite_ext(spr_dancebreak,poop,obj_camera.x,obj_camera.y-100,1,1,0,c_black,1)
	            draw_sprite(spr_dancebreak,0,obj_camera.x,(obj_camera.y-100)+poop)
	        }
	        switch(event) {
	            case 1:
	                draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,c_black,1)
	                if scr_shadercheck(sh_silhouette,c_white) {
	                    draw_sprite_ext(spr_gunkicon,0,obj_camera.x-1.5,obj_camera.y,1.5,1.5,0,c_white,1)
	                    draw_sprite_ext(spr_gunkicon,0,obj_camera.x+1.5,obj_camera.y,1.5,1.5,0,c_white,1)
	                    draw_sprite_ext(spr_gunkicon,0,obj_camera.x,obj_camera.y-1.5,1.5,1.5,0,c_white,1)
	                    draw_sprite_ext(spr_gunkicon,0,obj_camera.x,obj_camera.y+1.5,1.5,1.5,0,c_white,1)
	                    shader_reset();
	                }
	                draw_sprite_ext(spr_gunkicon,0,obj_camera.x,obj_camera.y,1.5,1.5,0,c_white,1)
	            break;
	            case 3:
	                draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,c_black,1)
	            break;
	            default:
	                //draw characters
	                with(obj_nermal) { 
	                    image_alpha=0
	                    draw_sprite(sprite_index,image_index,x,y)
	                    draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,coolcolor1,0.4)
	                    draw_sprite_ext(sprite_index,image_index,x-4,y+4,1,1,0,c_black,0.30)
	                }
	                with(obj_badguy) { 
	                    image_alpha=0
	                    var yy;
	                    if sprite_index=spr_gunkayy or obj_song.badan=spr_gunkayy {
	                        if obj_song.mmmmmmm<1 {
	                            obj_song.mmmmmmm+=0.045
	                        }
	                        yy=round(y-(20*(sin(obj_song.mmmmmmm*pi))))
	                    } else {
	                        yy=y
	                        obj_song.mmmmmmm=0
	                    }
	                    draw_sprite(sprite_index,image_index,x,yy)
	                    draw_sprite_ext(sprite_index,image_index,x,yy,1,1,0,coolcolor1,0.4)
	                    draw_sprite_ext(sprite_index,image_index,x-4,yy+4,1,1,0,c_black,0.30)
	                }
	                with(obj_player) {
	                    image_alpha=0
	                    if scr_shadercheck(shader_colorswap,c_white) {
	                        draw_sprite(sprite_index,image_index,x,y)
	                        shader_reset();
	                        scr_skinswapdude(coolcolor1)
	                            draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,0.4)
	                        shader_reset();
	                    } else {
	                        draw_sprite(sprite_index,image_index,x,y)
	                        draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,coolcolor1,0.4)
	                    }
	                    draw_sprite_ext(sprite_index,image_index,x+4,y+4,1,1,0,c_black,0.30)
	                }
	                //scary ending
	                if event="scary" {
	                    if paused=false waveint+=0.002;
	                    draw_sprite(spr_sat,1,obj_camera.x,obj_camera.y)
	                    draw_sprite(spr_sat,0,obj_camera.x,obj_camera.y)
	                    draw_sprite(spr_tillite,0,obj_camera.x,obj_camera.y)
	                    draw_sprite_ext(spr_tillite,1,obj_camera.x,obj_camera.y,1,1,0,c_white,abs(sin(current_time/200)))
	                }
	            break;
	        }
	    break;
	    case "starfire": //starfire
	        var coolcolor1=make_color_hsv(113,182,169)
	        if mmm%2=0 {
	            var bobby=-1
	        } else {
	            var bobby=1
	        }
	        //background stars
	        with(obj_backgroundp1) {
	            image_alpha=0
	            //stars
	            var l;
	            for(l=0;l<=300;l++) {
	                var ll=l/25
	                draw_sprite_part(sprite_index,1,0,l,sprite_width,1,round(exp(l*0.01)*(sin(current_time/700+ll))),l)
	            }
	            //back stage
	            draw_sprite(sprite_index,2,x,y)
	            draw_sprite_ext(sprite_index,2,x,y,1,1,0,c_black,0.35)
	            draw_sprite(sprite_index,3,x,y)
	        }
	        //BLIMP!!!!
	        m+=0.25
	        if m>=1100 {
	            m=-100
	        }
	        //draw_sprite(spr_gunkblimp,0,m,40)
	        var b;
	        for(b=0;b<72;b++) {
	            var sine=round(((sin(current_time/400+(b/(1/25))))*2))
	            //a friend of mine told me that "b/(1/25)" is just b*25 with extra steps.
	            //and I was going to fix it but he was
	            //being an ass about it so I'm keeping it in
	            draw_sprite_part(spr_gunkblimp,0,b,0,1,32,x-71+b+m,50+sine)
	        }
	        draw_sprite_part(spr_gunkblimp,0,72,0,143,32,x+m,50)
	        //background stage
	        with(obj_backgroundp1) {
	            draw_sprite_ext(spr_whitepixel,0,0,358,room_width,room_height,0,make_colour_rgb(48,46,61),1)
	            draw_sprite(sprite_index,image_index,x,y)
	            draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_black,0.35)
	            draw_sprite(sprite_index,4,x,y)
	            draw_sprite(spr_gunkfans,0,x,sprite_height+(sin(current_time/200)))
	        }
	        //characters
	        with(obj_lady) {
	            image_alpha=0
	            drawgirl=false
	            var sadsin=round(sin(current_time/400)*4)
	            draw_sprite(sprite_index,image_index,x,y)
	            draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,coolcolor1,0.25)
	            draw_sprite_ext(sprite_index,image_index,x,y+4,1,1,0,c_black,0.5)
	            draw_sprite(spr_speakersscreenlight,image_index,x,y)
	            draw_sprite(sprite[type],frame,x+sadsin,y)
	            draw_sprite_ext(sprite[type],frame,x+sadsin,y,1,1,0,coolcolor1,0.25)
	            draw_sprite_ext(sprite[type],frame,x+sadsin,y+4,1,1,0,c_black,0.5)
	        }
	        with(obj_player) { 
	            image_alpha=0
	            if scr_shadercheck(shader_colorswap,c_white) {
	                draw_sprite(sprite_index,image_index,x,y)
	                shader_reset();
	                scr_skinswapdude(coolcolor1)
	                    draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,0.25)
	                shader_reset();
	            } else {
	                draw_sprite(sprite_index,image_index,x,y)
	                draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,coolcolor1,0.25)
	            }
	            draw_sprite_ext(sprite_index,image_index,x+4,y+4,1,1,0,c_black,0.5)
	        }
	        with(obj_georgeghost) {
	            visible=false
	            draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_red,image_alpha)
	        }
	        with(obj_badguy) {
	            image_alpha=0
	            //rage sprites
	            var rage;
	            for (rage=4;rage<8;rage++) {
	                if sprite_index=anim[rage] {
	                    var randx=-6+irandom(12)
	                    var randy=-6+irandom(12)
	                    instance_create(x+randx,y+randy,obj_georgeghost)
	                }
	            }
	            //regular sprites
	            draw_sprite(sprite_index,image_index,x,y)
	            draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,coolcolor1,0.25)
	            draw_sprite_ext(sprite_index,image_index,x-4,y+4,1,1,0,c_black,0.5)
	        }
	        //crowd surfing cyan
	        if mmmmmmm<999 {
	            mmmmmmm+=0.5
	            var csin=sprite_get_height(obj_backgroundp1.sprite_index)+(sin(current_time/200));
	            draw_sprite(spr_cyancrowdsurf,0,mmmmmmm,csin)
	            draw_sprite_ext(spr_cyancrowdsurf,0,mmmmmmm,csin,1,1,0,coolcolor1,0.25)
	            draw_sprite_ext(spr_cyancrowdsurf,0,mmmmmmm,csin+4,1,1,0,c_black,0.5)
	        }
	        switch(event) {
	            case 0:
	                draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,c_black,1)
	            break;
	            case 1: //real world intro
	                //scrolling
	                if paused=false {
	                    mm+=0.05*bobby
	                }
	                //sky
	                var l;
	                for(l=0;l<=250;l++) {
	                    draw_sprite_part(spr_gunkstage1,1,0,l,903,1,(obj_camera.x-200)+(mmm*-200)+(sin(current_time/200+(l/15)))/(l/140),(obj_camera.y-200)+l)
	                }
	                //cool images
	                draw_sprite_ext(spr_gunkfbb,mmmmmm,obj_camera.x+(mm*-1),obj_camera.y,2,2,0,c_white,1)
	                if scr_shadercheck(shader_colorswap,c_white) {
	                    draw_sprite_ext(spr_gunkfb,mmm,obj_camera.x+mm,obj_camera.y,2,2,0,c_white,1)
	                    shader_reset();
	                    scr_skinswapdude(coolcolor1)
	                        draw_sprite_ext(spr_gunkfb,mmm,obj_camera.x+mm,obj_camera.y,2,2,0,c_white,0.25)
	                    shader_reset();
	                } else {
	                    draw_sprite_ext(spr_gunkfb,mmm,obj_camera.x+mm,obj_camera.y,2,2,0,c_white,1)
	                    draw_sprite_ext(spr_gunkfb,mmm,obj_camera.x+mm,obj_camera.y,2,2,0,coolcolor1,0.25)
	                }
	                draw_sprite_ext(spr_gunkfb,mmm,obj_camera.x+mm+(bobby*8),obj_camera.y+8,2,2,0,c_black,0.5)
	                //SCARY DUDE!
	                if mmmm!=0 {
	                    mmmm+=0.045
	                    mmmmm=1-(exp(mmmm-4))
	                }
	                scr_shadercheck(sh_silhouette,make_color_rgb(31,30,40))
	                    draw_sprite_ext(spr_gunkfb,mmm,obj_camera.x+mm,obj_camera.y,2,2,0,c_black,mmmmm)
	                shader_reset();
	                if scr_shadercheck(sh_highlight,make_color_rgb(32,30,40),c_white) {
	                    draw_sprite_ext(spr_gunkfb,mmm,obj_camera.x+mm,obj_camera.y,2,2,0,c_white,mmmmm)
	                    shader_reset();
	                }
	            break;
	            case 2: //rest of intro
	                //scrolling
	                if paused=false {
	                    mm+=0.05*bobby
	                }
	                draw_sprite_ext(spr_gunkfbb,mmmmmm,obj_camera.x+(mm*-1),obj_camera.y,2,2,0,c_white,1)
	                draw_sprite_ext(spr_gunkfb,mmm,obj_camera.x+mm,obj_camera.y,2,2,0,c_white,1)
	            break;
	            case 3: //final part
	                if mmmm>=0.01 {
	                    mmmm+=0.007
	                    mmmmm=(exp(mmmm))-1
	                }
	                draw_sprite_ext(spr_gunkfb,mmm,obj_camera.x,obj_camera.y,2,2,0,c_white,1)
	                draw_sprite_ext(spr_gunkfb,mmm+1,obj_camera.x,obj_camera.y,2,2,0,c_white,mmmmm)
	            break;
	            case 22:
	                waveint+=((mm*2)-waveint)/50
	                if mmm>0 {
	                    mmm+=(1-mmm)/40
	                }
	                mmmmm+=(mmmm-mmmmm)/50
	                draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,c_black,waveint/4)
	                draw_sprite_ext(spr_scaryeyes,0,(obj_player.x+50),obj_player.y,1,1,0,c_white,mmm)
	            break;
	            case "boobies":
	                mm+=0.5
	                if mm>=200 {
	                    mm=0
	                }
	                mmm+=(mmmm-mmm)/30
	                mmmmm+=(mmmmmm-mmmmm)/30
	                if !surface_exists(gunkscreen) {
	                    gunkscreen=surface_create(400,400)
	                } else {
	                    draw_surface(gunkscreen,obj_camera.x-200,obj_camera.y-200)
	                }
	                if !surface_exists(dudescreen) {
	                    dudescreen=surface_create(400,400)
	                } else {
	                    draw_surface(dudescreen,obj_camera.x-200,obj_camera.y-200)
	                }
	                //gunk surface
	                if !sprite_exists(gunkfreeze) {
	                    surface_set_target(gunkscreen)
	                        draw_rectangle(0,0,180,400,false)
	                        draw_triangle(180,0,220,0,180,400,false)
	                        draw_set_color_write_enable(1,1,1,0)
	                        var colorcool1=make_color_rgb(135,88,163);
	                        var colorcool2=make_color_rgb(100,30,133);
	                        var colorcool3=make_color_rgb(60,19,79);
	                        draw_rectangle_colour(0,0,400,400,colorcool1,colorcool1,colorcool2,colorcool2,false)
	                        var i;
	                        var ii;
	                        scr_shadercheck(sh_silhouette,colorcool3);
	                            for(i=-2;i<9;i++) {
	                                for(ii=-2;ii<9;ii++) {
	                                    draw_sprite_ext(spr_stradicon,0,mm+(i*100),mm+(ii*100),1,1,0,colorcool3,1)
	                                }
	                            }
	                        shader_reset();
	                        with(obj_georgeghost) {
	                            draw_sprite_ext(sprite_index,image_index,85+irandom(10),435+irandom(10),2,2,0,c_red,image_alpha)
	                        }
	                        draw_sprite_ext(obj_badguy.sprite_index,obj_badguy.image_index,90,440,2,2,0,c_white,1)
	                        draw_line_width_color(220,0,180,400,6,c_black,c_black)
	                        draw_set_color_write_enable(1,1,1,1)
	                    surface_reset_target();
	                } else {
	                    draw_sprite_ext(gunkfreeze,0,obj_camera.x-200,obj_camera.y-200,1,1,0,c_purple,1)
	                }
	                //dude surface
	                if !sprite_exists(dudefreeze) {
	                    surface_set_target(dudescreen)
	                        draw_rectangle(220,0,400,400,false)
	                        draw_triangle(220,400,180,400,220,0,false)
	                        draw_set_color_write_enable(1,1,1,0)
	                        var colorcool1=make_color_rgb(249,244,153);
	                        var colorcool2=make_color_rgb(247,203,155);
	                        var colorcool3=make_color_rgb(247,153,108)
	                        draw_rectangle_colour(0,0,400,400,colorcool1,colorcool1,colorcool2,colorcool2,false)
	                        var i;
	                        var ii;
	                        var flop;
	                        if obj_song.skill<65 {
	                            flop=0
	                        } else {
	                            flop=1
	                        }
	                        scr_shadercheck(sh_silhouette,colorcool3);
	                            for(i=-2;i<9;i++) {
	                                for(ii=-2;ii<9;ii++) {
	                                    draw_sprite_ext(spr_dudeicon,flop,mm+(i*100),mm+(ii*100),1,1,0,colorcool3,1)
	                                }
	                            }
	                        shader_reset();
	                        scr_shadercheck(shader_colorswap,c_white)
	                            draw_sprite_ext(obj_player.sprite_index,obj_player.image_index,370,435,3,3,0,c_white,1)
	                        shader_reset();
	                        draw_line_width_color(220,0,180,400,6,c_black,c_black)
	                        draw_set_color_write_enable(1,1,1,1)
	                    surface_reset_target();
	                } else {
	                    draw_sprite_ext(dudefreeze,0,obj_camera.x-200,obj_camera.y-200,1,1,0,c_yellow,1)
	                }
	                //sillohoueotues
	                draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,c_white,0.25-(mmm/520))
	                with(obj_player) {
	                    draw_sprite_ext(sprite_index,image_index,obj_camera.x+(510*(1/4))+(obj_song.mmmmm),obj_camera.y+200,2,2,0,c_black,1)
	                }
	                with(obj_badguy) {
	                    draw_sprite_ext(sprite_index,image_index,obj_camera.x-(510*(1/4))-(obj_song.mmm),obj_camera.y+200,2,2,0,c_black,1)
	                }
	            break;
	            case "gunkend":
	                draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,c_black,1)
	                if scr_shadercheck(sh_silhouette,c_white) {
	                    draw_sprite_ext(spr_biggestfan,1,obj_camera.x-1.5,obj_camera.y,1.5,1.5,0,c_white,1)
	                    draw_sprite_ext(spr_biggestfan,1,obj_camera.x+1.5,obj_camera.y,1.5,1.5,0,c_white,1)
	                    draw_sprite_ext(spr_biggestfan,1,obj_camera.x,obj_camera.y-1.5,1.5,1.5,0,c_white,1)
	                    draw_sprite_ext(spr_biggestfan,1,obj_camera.x,obj_camera.y+1.5,1.5,1.5,0,c_white,1)
	                    shader_reset();
	                }
	                draw_sprite_ext(spr_biggestfan,1,obj_camera.x,obj_camera.y,1.5,1.5,0,c_white,1)
	                draw_set_font(fnt_comic2)
	                draw_set_halign(fa_center)
	                draw_text(obj_camera.x,obj_camera.y+180,string_hash_to_newline("'Mom's biggest fan'"))
	                draw_set_halign(fa_left)
	            break;
	            default:
	            break;
	        }
	    break;
	}
}
