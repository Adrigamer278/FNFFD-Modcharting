var i;
//backing image
//draw_sprite_ext(spr_menubacksg,3,-400,-400,2,2,0,make_color_rgb(151,249,207),0.5)
draw_sprite_ext(spr_menubacksg,2,-250,-690,2,2,0,c_white,1)
//bars
draw_sprite_ext(spr_whitepixel,0,0,y-5,400,5,0,c_black,0.5)
draw_sprite_ext(spr_whitepixel,0,0,0,400,y-5,0,c_black,1)
draw_sprite_ext(spr_whitepixel,0,0,y+sprite_height,400,5,0,c_black,0.5)
draw_sprite_ext(spr_whitepixel,0,0,y+5+sprite_height,400,500,0,c_black,1)
//images
for (i=0;i<weeks+1;i++) {
    var shit=make_colour_hsv((225/weeks+1)*i,219,188)
    var shit2=make_colour_hsv((225/weeks+1)*i+5,235,120)
    draw_sprite(sprite_index,i,x+(sprite_width*i),y)
    draw_set_halign(fa_center);
    draw_set_font(fnt_comic2);
    draw_set_color(c_white)
    switch(i) { //weeks that BREAK THE RULES!!!
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
    }
}
draw_text((room_width/2),270+(sin(current_time/200)),string_hash_to_newline("PLAY"))
draw_set_halign(fa_left);
draw_set_font(fnt_comic1)
//song names
draw_text(20,260,string_hash_to_newline(string("Songs:")+string("#")+string(songname[sel,0])+string("#")+string(songname[sel,1])))
//difficulty
draw_set_halign(fa_right);
draw_text(380,260,string_hash_to_newline(string("Difficulty:")+string("#")+string(difficulty[sel])))
draw_set_halign(fa_left);

