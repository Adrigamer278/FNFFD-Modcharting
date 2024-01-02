/// @description gunk oh shit
switch(gunkohshit) {
    case 0:
        scr_nextframe(6)
        scr_stopsong(mus_popstar,3)
        alarm[3]=60
    break;
    case 1:
        alarm[3]=50
        scr_nextframe(7)
        audio_play_sound(snd_gunkugh,9999,false)
    break;
    case 2:
        scr_nextbox();
        pause=false
    break;
}
gunkohshit++

