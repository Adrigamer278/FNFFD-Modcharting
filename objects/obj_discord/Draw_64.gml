draw_set_font(fnt)
draw_set_halign(fa_center);
draw_set_color(c_white)
randomize();
var i;
var mess = "dig deeper"
for (i=1;i<string_length(mess)+1;i++) {
    draw_text_transformed_colour(__view_get( e__VW.WPort, 0 )/2+(10*i),__view_get( e__VW.HPort, 0 )/2+(random(6)),string_hash_to_newline(string_char_at(mess,i)),1,10,0,c_white,c_white,c_black,c_white,random(1))
}
draw_set_halign(fa_left);
draw_set_font(fnt_comic1)

