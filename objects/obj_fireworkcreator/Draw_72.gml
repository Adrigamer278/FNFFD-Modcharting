/// @description crazy background
var time = floor(shader_get_uniform(sh_cool, "Time"))
var texel = floor(shader_get_uniform(sh_cool, "Texel"))
shader_set(sh_cool)
    shader_set_uniform_f(time, current_time)
    shader_set_uniform_f(texel, 0.005, 0.005)
    draw_sprite_ext(spr_menubacksg,0,0,-20,1.15,1,0,c_white,1)
shader_reset();


