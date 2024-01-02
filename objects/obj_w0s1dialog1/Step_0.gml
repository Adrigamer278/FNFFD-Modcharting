action_inherited();
if scr_textcheck() {
    switch(text) {
        case 1:
            scr_nextframe(1)
            obj_cutscene.image_alpha=1
            scr_playsong(mus_birthdayboy,0)
        break;
        case 3: scr_nextframe(2) break;
        case 5: scr_nextframe(3) break;
        case 15: scr_nextframe(4) break;
        case 22: scr_nextframe(5) break;
        case 23: scr_nextframe(6) break;
        case 24: scr_nextframe(7) break;
        case 25:
            scr_nextframe(10)
            scr_playsong(mus_bozo,0.125)
            audio_stop_sound(snd_static)
        break;
        case 27: scr_nextframe(11) break;
        case 30: scr_nextframe(13) break;
    }
}
//special updating
switch(text) {
    case 24: //teachvee scare
        var textm=string_length(txt[text]);
        if pause=false {
            if i>=42 {
                scr_nextframe(8)
                scr_stopsong(mus_birthdayboy,0.5)
            }
            if i>=textm {
                pause=true
                stayvisable=true
                audio_play_sound(snd_static,9999,true)
                alarm[anext]=120
                alarm[aframe]=60
                aindex=9
            }
        }
    break;
    case 28: //butt awful
        if i<29 {scr_nextframe(11)} else {scr_nextframe(12)}
    break;
}

