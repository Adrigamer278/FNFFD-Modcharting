/// @description funny cyan scene
var peeb=obj_cutscene.image_draw;
scr_nextframe(peeb+1);
if peeb<11 {
    alarm[3]=40
} else if peeb=11 {
    alarm[3]=100
} else if peeb=12 {
    alarm[3]=70
} else if peeb=13 {
    pause=false
    audio_stop_sound(mus_w1s2_slow_reverb)
    audio_resume_sound(song[mus_pictocyan])
}

