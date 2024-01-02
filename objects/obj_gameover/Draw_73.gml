/// @description funny reveal
scr_shadercheck(shader_colorswap,c_white)
    draw_sprite_ext(sprite_index,1,x,y,1,1,0,c_white,lol)
shader_reset();
if jokesover=true && gaveup=false {
    lol-=0.02
    whatever+=0.02
    whatever=clamp(whatever,0,1)
}

