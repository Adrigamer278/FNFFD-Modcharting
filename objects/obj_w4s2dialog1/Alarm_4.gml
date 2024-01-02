/// @description gunk unplug cutscene-ception
switch(gunkunplug) {
    case 0:
        scr_nextframe(11)
        alarm[4]=25
        audio_play_sound(snd_unplug,9999,false)
    break;
    case 1:
        scr_nextframe(12)
        alarm[4]=5
        gunkunplugspr=0
    break;
    case 2:
        alarm[4]=5
        gunkunplugspr=1
    break;
    case 3:
        alarm[4]=5
        gunkunplugspr=0
    break;
    case 4:
        alarm[4]=5
        gunkunplugspr=1
    break;
    case 5:
        alarm[4]=5
        gunkunplugspr=0
    break;
    case 6:
        alarm[4]=5
        gunkunplugspr=1
    break;
    case 7:
        alarm[4]=5
        gunkunplugspr=0
    break;
    case 8:
        alarm[4]=5
        gunkunplugspr=1
    break;
    case 9:
        alarm[4]=5
        gunkunplugspr=0
    break;
    case 10:
        alarm[4]=5
        gunkunplugspr=1
    break;
    case 11:
        alarm[4]=5
        gunkunplugspr=0
    break;
    case 12:
        alarm[4]=5
        gunkunplugspr=1
    break;
    case 13:
        alarm[4]=5
        gunkunplugspr=0
    break;
    case 14:
        alarm[4]=5
        gunkunplugspr=1
    break;
    case 15:
        alarm[4]=5
        gunkunplugspr=2
    break;
    case 16:
        alarm[4]=50
        gunkunplugspr=3
    break;
    case 17:
        scr_nextbox();
        pause=false
    break;
}
gunkunplug++

