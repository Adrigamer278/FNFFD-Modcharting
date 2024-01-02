/// @description ds
switch(ds) {
    default: alarm[6]=6 break;
    case 0:
        audio_play_sound(snd_dsflop,9999,false)
        alarm[6]=6
    break;
    case 3:
        alarm[6]=50
    break;
    case 4:
        scr_nextbox();
        pause=false
    break;
}
ds++

