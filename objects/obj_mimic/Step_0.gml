var i;
for (i=0;i<=3;i++) {
    if mimiced.sprite_index=mimiced.anim[i] {
        sprite_index=anim[i]
        x=xx
        y=yy
    } else if mimiced.sprite_index=mimiced.anim[i+4] {
        sprite_index=anim[i+4]
        x=xx
        y=yy
    } else if mimiced.sprite_index=mimiced.anim[i+8] {
        sprite_index=anim[i+8]
        x=random(3)+xx
        y=random(3)+yy
    }
}
var pauses=mimiced.pause
var ayys=mimiced.ayy
//extra animations
switch(mimiced.sprite_index) {
    case pauses:
        sprite_index=pause
    break;
    case ayys:
        sprite_index=ayy
    break;
}
if mimiced.sprite_index=mimiced.idle[mimiced.idleon] {
    sprite_index=idle[mimiced.idleon]
}
//animating
if mimiced.image_index<image_number-1 {
    image_index=mimiced.image_index
}

