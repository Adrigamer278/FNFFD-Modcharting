image_speed=0
//image_alpha=0

strumTime = 60*(y/(obj_song.bpm*4*48*obj_song.notespeed))*1000

prevNote = undefined
noteHitbox = 166;

canBeHit = false;

note=0
type=1
event=0
hitable=true
bombhit=true
xx=x
//yy=y
//readable
if obj_stats.readable=true {
    sprite=spr_notesreadable
} else {
    sprite=spr_notes
}
if keyboard_check(ord("F")) {
    sprite=spr_notefump
}
spritehold=spr_noteshold
spriteholdcap=spr_notecap
bombsprite=spr_bombs
//if funy 6 k
if obj_song.notes=6 {
    plus=0.1
    sprite_index=spr_notes6k
} else {
    plus=0
}

