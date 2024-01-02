/// @description door slam
if doorslam%2=0 { //open
    scr_nextframe(16)
    audio_play_sound(snd_dooropen,9999,false)
} else { //shut
    scr_nextframe(17)
    audio_play_sound(snd_doorslam2,9999,false)
}
//ok thats enough
if doorslam>=3 {
    pause=false
    scr_nextbox();
} else {
    doorslam++
    alarm[3]=45
}

