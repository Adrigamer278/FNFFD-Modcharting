if flash=true{
    draw_sprite_ext(spr_whitepixel,0,0,0,800,800,0,c_white,alpha)
    alpha-=0.05
    if alpha<=0{
        flash=false
        alpha=1
    }
}

