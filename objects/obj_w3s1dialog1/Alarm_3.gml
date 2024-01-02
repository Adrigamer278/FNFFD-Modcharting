/// @description buddy arm break
var pooby=obj_cutscene.image_draw;
scr_nextframe(pooby+1)
switch(pooby) {
    case 7:
        scr_stopsong(mus_cats,0)
        audio_play_sound(snd_bonebreak,9999,false)
        alarm[3]=60
    break;
    case 8:
        audio_play_sound(snd_buddyyelp,9999,false)
        alarm[3]=15
    break;
    case 9:
        audio_stop_sound(snd_buddyyelp)
        scr_nextbox();
        pause=false
    break;
}

