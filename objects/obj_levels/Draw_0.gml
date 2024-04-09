//backing image
//draw_sprite_ext(spr_menubacksg,3,-400,-400,2,2,0,make_color_rgb(151,249,207),0.5)
draw_sprite_ext(spr_menubacksg,2,-250,-690,2,2,0,c_white,1)
//images

var yGap = 400

x+=(-400*sel-x)/5 * deltaMult
y+=(-yGap*curMod-y + defY)/5 * deltaMult

var yDiff = (y-defY)

for (mInd=0;mInd<array_length(validMods);mInd++) {
	var modData = validMods[mInd]
	var weekAmmo = array_length(modData.menuWknds)
	
	var modoff = yGap * mInd
	
	//bars
	draw_sprite_ext(spr_whitepixel,0,0,modoff + yDiff,400,defY-5,0,c_black,1)
	draw_sprite_ext(spr_whitepixel,0,0,defY-5 + modoff + yDiff,400,5,0,c_black,0.5)

	draw_sprite_ext(spr_whitepixel,0,0,defY+sprite_height + modoff + yDiff,400,5,0,c_black,0.5)
	draw_sprite_ext(spr_whitepixel,0,0,defY+5+sprite_height + modoff + yDiff,400,200,0,c_black,1)

	for (i=0;i<weekAmmo;i++) {
		var wkndData = modData.menuWknds[i]
	    var shit=make_colour_hsv((225/weekAmmo)*i,219,188)
	    var shit2=make_colour_hsv((225/weekAmmo)*i+5,235,120)
	
		var assetList = (wkndData.beat ? wkndData.beatData : wkndData).assets
	
		for (asset=0;asset<array_length(assetList);asset++) {
			var assetData = assetList[asset]
			
			if assetData.spr<=-1 { continue; }
			draw_sprite(assetData.spr,assetData.frame,x+(sprite_width*i),y + modoff)
		}
	    //draw_sprite(sprite_index,i,x+(sprite_width*i),y)
    
		draw_set_halign(fa_center);
	    draw_set_font(fnt_comic2);
	    draw_set_color(c_white)
	
		draw_text_colour(x+(room_width/2)+(400*i),10 + modoff + yDiff,(wkndData.beat ? wkndData.beatData : wkndData).name,shit,shit,shit2,shit2,1)
	
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
	
	draw_text((room_width/2),270+(sin(current_time/200)) + modoff + yDiff,string_hash_to_newline("PLAY"))
	draw_set_halign(fa_left);
	draw_set_font(fnt_comic1)
	
	// for that funny up and down thing
	if array_length(modData.menuWknds) <= sel {
		continue;
	}
	
	var curWknd = modData.menuWknds[sel]

	var songStr = string("Songs:")

	var usedSongList = (curWknd.beat ? curWknd.beatData : curWknd).songList

	for (i=0;i<array_length(usedSongList);i++) {
		songStr = songStr + string("#")+ usedSongList[i]
	}

	//song names
	draw_text(20,260 + modoff + yDiff,string_hash_to_newline(songStr))

	//difficulty
	draw_set_halign(fa_right);
	draw_text(380,260 + modoff + yDiff,string_hash_to_newline(string("Difficulty:")+string("#")+string((curWknd.beat ? curWknd.beatData : curWknd).difficulty)))
	draw_set_halign(fa_left);
	
	//select arrows
	
	var arrowX=5
	
	if mInd == 0 {
		draw_sprite_ext(spr_selectthing,0,arrowX,400-38.5+(50*0.35*0.5) + modoff + yDiff,0.5,0.35,0,c_white,1) // down
	} else if mInd == array_length(validMods)-1 {
		draw_sprite_ext(spr_selectthing,1,arrowX,400-38.5+(50*0.35*0.5) + modoff + yDiff,0.5,0.35,0,c_white,1) // up
	} else {
		draw_sprite_ext(spr_selectthing,1,arrowX,400-37.5 + modoff + yDiff,0.5,0.35,0,c_white,1) // up
		draw_sprite_ext(spr_selectthing,0,arrowX,400-21.5 + modoff + yDiff,0.5,0.35,0,c_white,1) // down	
	}
	
	draw_set_font(fnt_comic2);
	draw_set_halign(fa_left);
	
	draw_text_transformed(arrowX + 30,modoff + yDiff +(400+400-22.5-53.5)/2 + 2.25 + cos(2+current_time/200)*2,modData.name,0.75,0.75,0)
}

