with (other) {
switch(blinking) {
    case 0:
        obj_cutscene.image_blend=c_white
        scr_nextframe(4)
        alarm[3]=40
    break;
    case 1:
        scr_nextframe(5)
        alarm[3]=30
        audio_play_sound(snd_dwuh,9999,false)
    break;
    case 2:
        scr_nextframe(4)
        alarm[3]=3
        audio_play_sound(snd_blink,9999,false)
    break;
    case 3:
        scr_nextframe(5)
        alarm[3]=3
    break;
    case 4:
        scr_nextframe(4)
        alarm[3]=3
        audio_play_sound(snd_blink,9999,false)
    break;
    case 5:
        scr_nextframe(5)
        alarm[3]=50
    break;
    case 6:
        scr_nextbox();
        pause=false
        text=11
    break;
}
blinking++

}
