//draw_text(0,0,string(obj_stats.bind[0])+string(obj_stats.bind[1])+string(obj_stats.bind[2])+string(obj_stats.bind[3]))
//background
draw_sprite_ext(spr_menubacksg,0,-2,-450,2,2,0,c_orange,1)
//text
draw_set_font(fnt_comic2)
draw_set_color(c_black)
draw_text(22,22,string_hash_to_newline("OPTIONS"))
draw_set_color(c_white)
draw_text(20,20,string_hash_to_newline("OPTIONS"))
draw_set_font(fnt_comic1)
y+=((-1*sel)*20-y)/5
var i;
for (i=0;i<=sels;i++) {
    //words
    draw_set_color(c_black)
    var xx;
    var yy;
    for (xx=0;xx<3;xx++) {
        for (yy=0;yy<3;yy++) {
            draw_text(35+xx-1,((195+yy-1)+(25*i))+y,string_hash_to_newline((options[i])))
        }
    }
    //grey out text
    if i=sel {
        draw_set_color(c_white)
    } else {
        draw_set_color(c_gray)
    }
    draw_text(35,(195+(25*i))+y,string_hash_to_newline(options[i]))
}
//reset to default stuff
draw_set_font(fnt_comic1)
draw_set_color(c_white)

