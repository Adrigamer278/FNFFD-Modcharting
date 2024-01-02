/// @description boob
/*
//what am I
if target = "badguy" {
    var cool = obj_badguy
} else {
    var cool = obj_player
}
switch(mimic) {
    
}
var i;
for (i=0;i<4;i++) {
    if cool.sprite_index=cool.anim[i] or cool.sprite_index=cool.anim[i+4]{
        sprite_index=anim[i]
        x=xx
        y=yy
    }
    if cool.sprite_index=cool.anim[i+8] {
        sprite_index=anim[i+4]
        x=random(3)+xx
        y=random(3)+yy
    }
}
//extra animations
switch(obj_player.sprite_index) {
    case cool.pause:
        sprite_index=pause
    break;
    case cool.ayy:
        sprite_index=ayy
    break;
}
//seperate for loop because life isn't good
var hate;
for (hate=0;hate<3;hate++) {
    if cool.sprite_index=cool.idle[hate] {
        sprite_index=idle[hate]
    }
}
//animating
if cool.image_index<image_number-1 {
    image_index=obj_player.image_index
}
//yay!
if sprite_index=spr_ladymayy && !audio_is_playing(snd_ladyyay) {
    audio_play_sound(snd_ladyyay,9999,false)
}

/* */
image_index=0
image_speed=0
mimiced=obj_player //what is being mimiced
mimic[0]=true //normal notes
minic[1]=true //alt notes
mimic[2]=true //missing
mimic[3]=true //bomb notes
idle[0]=spr_ladymidle
idle[1]=spr_ladymidle
idle[2]=spr_ladymidle
idle[3]=spr_ladymidle
ayy=spr_ladymayy
pause=spr_ladympause
anim[0]=spr_ladymleft
anim[1]=spr_ladymdown
anim[2]=spr_ladymup
anim[3]=spr_ladymright
//alt
anim[4]=spr_ladymleft
anim[5]=spr_ladymdown
anim[6]=spr_ladymup
anim[7]=spr_ladymright
//miss
anim[8]=spr_ladymleftmiss
anim[9]=spr_ladymdownmiss
anim[10]=spr_ladymupmiss
anim[11]=spr_ladymrightmiss
//bombs
anim[12]=spr_ladymleftmiss
anim[13]=spr_ladymdownmiss
anim[14]=spr_ladymupmiss
anim[15]=spr_ladymrightmiss
xx=x
yy=y

/* */
/*  */
