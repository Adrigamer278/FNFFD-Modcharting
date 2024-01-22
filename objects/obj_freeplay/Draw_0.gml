draw_set_font(fnt_comic1)
//background

var selCategory = obj_stats.categoriesData[curCat]
byy+=((sel/array_length(selCategory.songs))*-80-byy)/5
boink = 255/((obj_stats.mini*-1)+obj_stats.maxi)*sel-obj_stats.mini
cc+=(boink-cc)/7
image_alpha=0
draw_sprite_ext(spr_menubacksg,3,-400,byy,2,2,0,make_colour_hsv(cc,160,197),1)
draw_sprite_ext(spr_whitepixel,0,0,0,800,800,0,make_colour_hsv(cc,160,197),0.25)
//not background
y+=((-1*sel)*40-y)/5

var i;
for (i=0;i<array_length(selCategory.songs);i++) {
    //REALLY COOL MATH THAT SUCKS LOL
	
	var songSel = selCategory.songs[i]
    if i>(obj_stats.mini*-1)-1 {
        var m=0
        var s=i+obj_stats.mini
    } else {
        var m=1
        var s=(i*-1)+(obj_stats.mini*-1)-1
        //var s=(obj_stats.mini*-1)-i
    }
    //words
    //determine string
    if obj_stats.isSongUnlocked(songSel[0],curCat) {
        var songname=songSel[0]
    } else {
        var songname="? ? ?"
    }
    //draw outline
    draw_set_color(c_black)
    var xx;
    var yy;
    for (xx=0;xx<3;xx++) {
        for (yy=0;yy<3;yy++) {
            draw_text(35+xx-1,((195+yy-1)+(40*i))+y,string_hash_to_newline(songname))
            draw_text(35+xx,((195+yy)+(40*i))+y,string_hash_to_newline(songname))
        }
    }
    //new song bubble
    if songSel[1].isNew=true{
        var long=string_length(songname);
        draw_sprite(spr_freeplaynew,0,35+(long*5),195+(40*i)+y)
        //name oolors
        var textcolor=make_color_rgb(255,255,81)
        var textcolord=c_orange
    } else {
        var textcolor=c_white
        var textcolord=c_gray
    }
    //scores
	
	var scoreTextContent = string_hash_to_newline(string("Score: ")+string(songSel[1].score)+string(" | Misses: ")+string(songSel[1].misses))
	
    var coolytextx;
    var coolytexty;
    for(coolytextx=0;coolytextx<3;coolytextx++) {
        for(coolytexty=0;coolytexty<3;coolytexty++) {
            draw_text(224+coolytextx-1,(y*5)+280+(200*i)+coolytexty-1,scoreTextContent)    
            draw_text(224+coolytextx,(y*5)+280+(200*i)+coolytexty,scoreTextContent)
        }
    }
    //grey out text
    if i=sel {
        draw_set_color(textcolor)
    } else {
        draw_set_color(textcolord)
    }
    //draw name and score
    draw_text(224,(y*5)+280+(200*i),scoreTextContent)
    draw_text(35,(195+(40*i))+y,string_hash_to_newline(songname))
    //draw icon outline and shadow
	
	var sprUsed = spr_freeplayicons
	var frameUsed = 0
	
	sprUsed = songSel[3][0]
	frameUsed = songSel[3][1]
	
    var j
    var jj
    for (j=0;j<3;j++) {
        for (jj=0;jj<3;jj++) {
            draw_sprite_ext(sprUsed,frameUsed,223+j,(y*5)+129+(200*i)+jj,1,1,0,c_black,1)
            draw_sprite_ext(sprUsed,frameUsed,224+j,(y*5)+130+(200*i)+jj,1,1,0,c_black,1)
        }
    }
    //draw icon
    if i=sel {
        draw_sprite(sprUsed,frameUsed,224,(y*5)+130+(200*i))
    } else {
        draw_sprite(sprUsed,frameUsed,224,(y*5)+130+(200*i))
        draw_sprite_ext(sprUsed,frameUsed,224,(y*5)+130+(200*i),1,1,0,c_black,0.5)
    }
    //make hidden if locked
    if !obj_stats.isSongUnlocked(songSel[0],curCat) {
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
        draw_sprite(spr_freeplayiconsL,0,224,(y*5)+130+(200*i))
        shader_reset();
    }
}

/* */
/*  */
