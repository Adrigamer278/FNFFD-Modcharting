image_speed=0
image_index=0
note=0;
incomingAngle = 90;
defaultX = x;
defaultY = y;

press=false
if obj_stats.readable=true {
    sprite=spr_uinotesreadable
} else {
    sprite=spr_uinotes
}
if keyboard_check(ord("F")) {
    sprite=spr_uinotefump
}
//if funy 6 k
if obj_song.notes=6 {
    plus=0.1
    sprite_index=spr_uinotes6k
} else {
    plus=0
}

