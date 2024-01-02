//logo and stuff
draw_set_font(fnt_comic1b)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_text(90,20,string_hash_to_newline("firework creator!"))
    //reset
    draw_set_halign(fa_left)
    draw_set_valign(fa_top)
//color selection
var colordraw
for (colordraw=0;colordraw<8;colordraw++) {
    var color;
    switch(colordraw) {
        case 0:
            color=c_red
        break;
        case 1:
            color=c_orange
        break;
        case 2:
            color=c_yellow
        break;
        case 3:
            color=c_green
        break;
        case 4:
            color=c_aqua
        break;
        case 5:
            color=c_blue
        break;
        case 6:
            color=c_purple
        break;
        case 7:
            color=c_black
        break;
        }
    draw_set_font(fnt_comic1)
    draw_text(20,180,string_hash_to_newline("COLORS:"))
    draw_sprite_ext(spr_whitepixel,0,20,200+(colordraw*20),50,20,0,color,1)
}
//drawing canvas
var xx
var yy
for (xx=0;xx<50;xx++) {
    for (yy=0;yy<50;yy++) {
        var color;
        switch(pixel[xx,yy]) {
            case 0:
                color=c_red
            break;
            case 1:
                color=c_orange
            break;
            case 2:
                color=c_yellow
            break;
            case 3:
                color=c_green
            break;
            case 4:
                color=c_aqua
            break;
            case 5:
                color=c_blue
            break;
            case 6:
                color=c_purple
            break;
            case 7:
                color=c_black
            break;
            default:
                color=c_white
            break;
        }
        draw_sprite_ext(spr_whitepixel,0,x+(xx*4),y+(yy*4),4,4,0,color,1)
    }
}

