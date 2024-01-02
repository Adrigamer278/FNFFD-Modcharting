/// @description dude and text
shake=shake*-1
shake=shake/1.5
x=xx+shake
var stupid = make_colour_rgb(215, 57, 89)
var stupid2 = make_colour_rgb(162, 51, 103)
draw_set_halign(fa_center);
//ghost sprite
if sprite_index=spr_dudeloss {
    var s;
    for(s=0;s<sprite_height;s++) {
        var sine=round((sin(current_time/400+(s*(1/24))))*8)
        if scr_shadercheck(shader_colorswap,c_red) {
            draw_sprite_part_ext(sprite_index,0,0,s,sprite_width,1,x-69+sine,y-sprite_height+s,1,1,c_white,whatever/4)
            shader_reset();
            scr_skinswapdude(c_blue)
            draw_sprite_part_ext(sprite_index,0,0,s,sprite_width,1,x-69+(sine*-1),y-sprite_height+s,1,1,c_white,whatever/4)
            shader_reset();
        } else {
            draw_sprite_part_ext(sprite_index,0,0,s,sprite_width,1,x-69+sine,y-sprite_height+s,1,1,c_red,whatever/4)
            draw_sprite_part_ext(sprite_index,0,0,s,sprite_width,1,x-69+(sine*-1),y-sprite_height+s,1,1,c_blue,whatever/4)
        }
    }
}
//real sprite
scr_shadercheck(shader_colorswap,c_white)
    draw_sprite(sprite_index,0,x,y)
shader_reset();
//text
draw_text_colour(room_width/2,80+sin(current_time/200),string_hash_to_newline("retry?"),stupid,stupid,stupid2,stupid2,whatever)
//resetting stuff
draw_set_halign(fa_left);
draw_set_font(fnt_comic1);

