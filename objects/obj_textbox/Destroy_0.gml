/// @description cutscene ending
if instance_exists(obj_cutscene) {
    with(obj_cutscene) {
        event_user(0);
    }
}
//music stop
var m;
for(m=mus_birthdayboy;m<snd_3;m++) {
    if audio_is_playing(song[m]) {
        scr_stopsong(m,0.25)
    }
}
audio_stop_sound(snd_crowd);

