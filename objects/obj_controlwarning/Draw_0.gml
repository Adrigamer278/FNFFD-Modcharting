//99
if randomfunny=99 {
    draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,c_white,1)
    draw_set_halign(fa_left)
    draw_text(2,2,string_hash_to_newline("YOUR IN THE TINELIME WHERE THE CHILDISH PRANKSTER#WEARS A BLUE SHIRT!"))
}
draw_set_font(fnt_comic1)
draw_set_halign(fa_center)
draw_text(room_width/2,20,string_hash_to_newline("---------------#C O N T R O L S#---------------###[Z] or [ENTER] - confirm#[X] or [SHIFT] - exit#[1] and [2] - lower/raise the volume#use the arrow keys#to hit the notes!!!###[Z] or [ENTER] to continue"))
draw_set_halign(fa_left)
//dude n' lady
draw_sprite_ext(spr_ladyfacec,ranface,50,room_height-60,1,1,0,image_blend,1)
draw_sprite_ext(spr_dudefacec,ranface,room_width-60,room_height-50,1,1,0,image_blend,1)

