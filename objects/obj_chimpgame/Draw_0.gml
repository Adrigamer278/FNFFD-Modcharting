//chimps
if time <= round(maxtime/7) && time > 0{
    draw_sprite(spr_chimps,randomchimp,0,0)
}
//chimp text
draw_set_font(fnt_comic1)
draw_set_colour(c_black)
var i;
var ii;
for (i=0;i<3;i++) {
    for (ii=0;ii<3;ii++) {
        draw_text(15+i,361+ii,string_hash_to_newline(string("chimpscore: ") + string(chimpscore)))
        draw_text(16+i,362+ii,string_hash_to_newline(string("chimpscore: ") + string(chimpscore)))
    }
}
draw_set_colour(c_white)
draw_text(16,362,string_hash_to_newline(string("chimpscore: ") + string(chimpscore)))
//try again
if time<0 {
    draw_set_colour(c_white)
    draw_text(64,48,string_hash_to_newline("try again"))
}

