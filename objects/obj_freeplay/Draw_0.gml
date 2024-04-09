draw_set_font(fnt_comic1)
//background

var selMod = obj_stats.loadedMods[curMod]

byy+=((sel/array_length(selMod.fpSongs))*-80-byy)/5
boink = 255/(array_length(selMod.fpSongs))*sel-selMod.fpSel
cc+=(boink-cc)/7
image_alpha=0
draw_sprite_ext(spr_menubacksg,3,-400,byy,2,2,0,make_colour_hsv(cc,160,197),1)
draw_sprite_ext(spr_whitepixel,0,0,0,800,800,0,make_colour_hsv(cc,160,197),0.25)
//not background

var xGap = 400

y+=((-1*sel)*40-y)/5 * deltaMult
x+=((-1*curMod)*xGap-x)/5 * deltaMult

for (modInd=0;modInd<array_length(obj_stats.loadedMods);modInd++) {
	var modData = obj_stats.loadedMods[modInd]
	
	var modoff = xGap * modInd + x
	var i;
	for (i=0;i<array_length(modData.fpSongs);i++) {
	    //REALLY COOL MATH THAT SUCKS LOL
	
		var song = modData.fpSongs[i]
	    //words
	    //determine string
	    if !song.stats.locked {
	        var songname= (song.stats.beat ? song.beatData : song).displayName
	    } else {
	        var songname="? ? ?"
	    }
	    //draw outline
	    draw_set_color(c_black)
	    var xx;
	    var yy;
	    for (xx=0;xx<3;xx++) {
	        for (yy=0;yy<3;yy++) {
	            draw_text(35+xx-1 + modoff,((195+yy-1)+(40*i))+y,string_hash_to_newline(songname))
	            draw_text(35+xx + modoff,((195+yy)+(40*i))+y,string_hash_to_newline(songname))
	        }
	    }
	    //new song bubble
	    if song.stats.isNew=true{
	        var long=string_length(songname);
	        draw_sprite(spr_freeplaynew,0,35+(long*5)+ modoff,195+(40*i)+y)
	        //name oolors
	        var textcolor=make_color_rgb(255,255,81)
	        var textcolord=c_orange
	    } else {
	        var textcolor=c_white
	        var textcolord=c_gray
	    }
	    //scores
	
		var scoreTextContent = string_hash_to_newline(string("Score: ")+string(song.stats.score)+string(" | Misses: ")+string(song.stats.misses))
	
	    var coolytextx;
	    var coolytexty;
	    for(coolytextx=0;coolytextx<3;coolytextx++) {
	        for(coolytexty=0;coolytexty<3;coolytexty++) {
	            draw_text(224+coolytextx-1 + modoff,(y*5)+280+(200*i)+coolytexty-1,scoreTextContent)    
	            draw_text(224+coolytextx + modoff,(y*5)+280+(200*i)+coolytexty,scoreTextContent)
	        }
	    }
		
		var isSelected = (i=sel && modInd=curMod)
	    //grey out text
	    if isSelected {
	        draw_set_color(textcolor)
	    } else {
	        draw_set_color(textcolord)
	    }
	    //draw name and score
	    draw_text(224 + modoff,(y*5)+280+(200*i),scoreTextContent)
	    draw_text(35 + modoff,(195+(40*i))+y,string_hash_to_newline(songname))
	    //draw icon outline and shadow
	
		var iconData = (song.stats.beat ? song.beatData : song).freeplayIcon
	
		sprUsed = iconData.spr
		frameUsed = iconData.frame
	
	    var j
		var jj
		for (j=0;j<3;j++) {
		    for (jj=0;jj<3;jj++) {
		        draw_sprite_ext(sprUsed,frameUsed,223+j + modoff,(y*5)+129+(200*i)+jj,1,1,0,c_black,1)
		        draw_sprite_ext(sprUsed,frameUsed,224+j + modoff,(y*5)+130+(200*i)+jj,1,1,0,c_black,1)
		    }
		}
		//draw icon
		if isSelected {
		    draw_sprite(sprUsed,frameUsed,224 + modoff,(y*5)+130+(200*i))
		} else {
		    draw_sprite(sprUsed,frameUsed,224 + modoff,(y*5)+130+(200*i))
		    draw_sprite_ext(sprUsed,frameUsed,224 + modoff,(y*5)+130+(200*i),1,1,0,c_black,0.5)
		}
	    //make hidden if locked
	    if song.stats.locked {
	        scr_shadercheck(sh_ntsc)
	        /*
	        shader_set(sh_ntsc);
	        var _bleeding_width = floor(shader_get_uniform(sh_ntsc, "f_screenWidth"))
	        var _bleeding_height = floor(shader_get_uniform(sh_ntsc, "f_screenHeight"))
			var _bleeding_bleeding = floor(shader_get_uniform(sh_ntsc, "f_bleeding"))
			//shader_set_uniform_f(_bleeding_width, 1.0/(window_width*surface_aspect));
	        //shader_set_uniform_f(_bleeding_height, 1.0/(window_height*surface_aspect));
	        shader_set_uniform_f(_bleeding_width, 1/window_get_width());
	        shader_set_uniform_f(_bleeding_height, 1/window_get_height());
			shader_set_uniform_f(_bleeding_bleeding, 3);*/
	        draw_sprite(spr_freeplayiconsL,0,224 + modoff,(y*5)+130+(200*i))
	        shader_reset();
	    }
	}
}

/* */
/*  */
