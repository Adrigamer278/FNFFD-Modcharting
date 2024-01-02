/// @description line + minimap
//line
draw_sprite_ext(spr_whitepixel,0,352,64,notes*16*2,2,0,c_red,1)
//minimap
var ploopy
//64
ploopy = (window_get_height()/4) - ((songpos/60*bpm*4)*16)/16
draw_sprite_ext(spr_whitepixel,0,342-notes*2-1,ploopy-1,notes*2+2,songlong/4*4+2,0,c_black,1)
draw_sprite_ext(spr_whitepixel,0,342-notes*2,ploopy,notes*2+2,songlong/4*4+2,0,c_black,1)
draw_sprite_ext(spr_whitepixel,0,342,ploopy,-notes,songlong/4*4,0,c_white,1)
draw_sprite_ext(spr_whitepixel,0,342-notes,ploopy,-notes,songlong/4*4,0,c_gray,1)
draw_sprite_ext(spr_whitepixel,0,342,ploopy+(songpos/60*bpm)*4,-notes*2,1,0,c_red,1)
var c;
var cc;
for (cc=0; cc<notes*2; cc++) {
    for (c=0; c<songlong; c++) {
        if note[cc,c] > 0 {
            draw_sprite_ext(spr_whitepixel,0,342-(notes*2)+cc,ploopy+(c/4)*4,1,1,0,c_blue,1)
        }
    }
}
//draw_text(0,0,string(songpos) + string("/") + string(songlong))

