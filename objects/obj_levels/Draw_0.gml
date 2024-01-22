//backing image
//draw_sprite_ext(spr_menubacksg,3,-400,-400,2,2,0,make_color_rgb(151,249,207),0.5)
draw_sprite_ext(spr_menubacksg,2,-250,-690,2,2,0,c_white,1)
//bars
draw_sprite_ext(spr_whitepixel,0,0,y-5,400,5,0,c_black,0.5)
draw_sprite_ext(spr_whitepixel,0,0,0,400,y-5,0,c_black,1)
draw_sprite_ext(spr_whitepixel,0,0,y+sprite_height,400,5,0,c_black,0.5)
draw_sprite_ext(spr_whitepixel,0,0,y+5+sprite_height,400,500,0,c_black,1)
//images

for (cI=0;cI<array_length(obj_stats.categoriesData);cI++) {
	var weekAmmo = array_length(obj_stats.categoriesData[cI].weekMenuData)

	for (i=0;i<weekAmmo;i++) {
		var disWeekData = obj_stats.categoriesData[cI].weekMenuData[i]
	    var shit=make_colour_hsv((225/weekAmmo)*i,219,188)
	    var shit2=make_colour_hsv((225/weekAmmo)*i+5,235,120)
	
		var usedSprList = obj_stats.categoriesData[cI].weeks[i].beat ? disWeekData.assets[1] : disWeekData.assets[0]
	
		for (sprI=0;sprI<array_length(usedSprList);sprI++) {
			var sprData = usedSprList[sprI]
			draw_sprite(sprData[0],sprData[1],x+(sprite_width*i),y)
		}
	    //draw_sprite(sprite_index,i,x+(sprite_width*i),y)
    
		draw_set_halign(fa_center);
	    draw_set_font(fnt_comic2);
	    draw_set_color(c_white)
	
		draw_text_colour(x+(room_width/2)+(400*i),10,disWeekData.name,shit,shit,shit2,shit2,1)
	
	    /*switch(i) { //weeks that BREAK THE RULES!!!
	        case 0:
	            draw_text_colour(x+(room_width/2)+(400*i),10,string_hash_to_newline("TUTORIAL"),shit,shit,shit2,shit2,1)
	            //draw_text(x+(room_width/2),20,"TUTORIAL")
	        break;
	        case 2:
	            draw_text_colour(x+(room_width/2)+(400*i),10,string_hash_to_newline(string("WEEKND ")+string(i)),shit,shit,shit2,shit2,1)
	            if obj_stats.playedw2=false {
	                draw_sprite(spr_levelprew2,0,x+(sprite_width*i),y)
	            } else {
	                draw_sprite(spr_levelprew2,1,x+(sprite_width*i),y)
	            }
	        break;
	        default:
	            draw_text_colour(x+(room_width/2)+(400*i),10,string_hash_to_newline(string("WEEKND ")+string(i)),shit,shit,shit2,shit2,1)
	            //draw_text(x+(room_width/2)*(400*i),20,string("WEEK ")+string(i))
	        break;
	    }*/
	}	
}

var selWeekData = obj_stats.categoriesData[catSel].weekMenuData[sel]

draw_text((room_width/2),270+(sin(current_time/200)),string_hash_to_newline("PLAY"))
draw_set_halign(fa_left);
draw_set_font(fnt_comic1)

var songStr = string("Songs:")

var usedSongList = obj_stats.categoriesData[catSel].weeks[sel].beat ? selWeekData.dispSongs[1] : selWeekData.dispSongs[0]

for (i=0;i<array_length(usedSongList);i++) {
	songStr = songStr + string("#")+ usedSongList[i]
}

//song names
draw_text(20,260,string_hash_to_newline(songStr))

//difficulty
draw_set_halign(fa_right);
draw_text(380,260,string_hash_to_newline(string("Difficulty:")+string("#")+string(selWeekData.difficulty)))
draw_set_halign(fa_left);

