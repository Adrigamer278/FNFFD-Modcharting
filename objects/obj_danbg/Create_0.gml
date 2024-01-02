//set starting position
x=-300
y=263
//depth=obj_song.depth-(obj_song.m+1)
//goal    212,263
//image values
image_speed=0
picture=0
behind=-1
//set values
phase="walkin" //"idle","seeya"
waittime=0 //how long do you just sit and wait there
walkout=0
startx=x

///the guys
/*
switch(phase) {
    case "walkin":
        var xx=round(x);
        var xhuh=abs(startx)+212
        draw_sprite_ext(sprite_index,image_index,xx,y,1,1,0,c_white,image_alpha)
        //the guys
        if obj_song.paused=false {
            //walking math
            if x<212 {
                x+=xhuh/(room_speed*(12*(60/obj_song.bpm)))
            } else {
                phase="idle"
            }
            //draw sprites
            draw_sprite_ext(spr_nnwalk1,current_time/200,xx,y,1,1,0,c_white,image_alpha)
            draw_sprite_ext(spr_dukewalk1,current_time/200,xx+sprite_width,y,1,1,0,c_white,image_alpha)
        } else {
            draw_sprite_ext(spr_nnidk,0,xx,y,1,1,0,c_white,image_alpha)
            draw_sprite_ext(spr_dukeidk,0,xx+sprite_width,y,1,1,0,c_white,image_alpha)
        }
    break;
    case "idle":
        draw_self();
        draw_sprite_ext(spr_nnidk,0,x,y,1,1,0,c_white,image_alpha)
        draw_sprite_ext(spr_dukeidk,0,x+sprite_width,y,1,1,0,c_white,image_alpha)
        waittime+=12/1000000*delta_time //why is this accurate to the animation frame rate? idk
        if waittime>=36 {
            phase="seeya"
        }
    break;
    case "seeya":
        draw_self();
        //the guys
        if walkout<300 {
            walkout+=0.5
        }
        round(walkout)
        draw_sprite_ext(spr_nnwalk2,current_time/200,x-walkout,y,1,1,0,c_white,image_alpha)
        draw_sprite_ext(spr_dukewalk2,current_time/200,x+sprite_width+walkout,y,1,1,0,c_white,image_alpha)
    break;
}

/* */
/*  */
