//background

//text
var text="mouse demo!!!#R to record#P to playback recording#S to save#L to load"
draw_set_font(fnt_comic1)
draw_set_color(c_black)
var f;
var ff;
for(f=-1;f<2;f++) {
    for(ff=-1;ff<2;ff++) {
        draw_text(5+f,5+ff,string_hash_to_newline(text))
        draw_text(6+f,6+ff,string_hash_to_newline(text))
    }
}
draw_set_color(c_white)
draw_text(5,5,string_hash_to_newline(text))
//progress bar
draw_sprite_ext(spr_whitepixel,0,room_width-65,5,62,12,0,c_black,1)
draw_sprite_ext(spr_whitepixel,0,room_width-66,6,62,12,0,c_black,1)
draw_sprite_ext(spr_whitepixel,0,room_width-65,6,60*(c/(room_speed*10)),10,0,c_white,1)
//mouse
if action="playing" {
    draw_sprite(spr_dud,0,mouse[0,c],mouse[1,c])
}

