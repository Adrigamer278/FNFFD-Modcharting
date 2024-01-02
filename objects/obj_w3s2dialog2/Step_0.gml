action_inherited();
///set cutscene sprites
switch(text) {
    case 19:
        if i=ii {
            scr_nextbox();
        }
    break;
    case 56:
        if i=ii && sound=false {
            audio_pause_sound(song[mus_specialguest])
            audio_play_sound(snd_gasp,9999,false)
            sound=true
        }
    break;
    case 72:
        if i=ii {
            scr_nextbox();
        }
    break;
}
//regular
if scr_textcheck() {
    //general updating
    switch(text) {
        case 1:
            scr_nextframe(0)
            scr_playsong(mus_bbbb,0.125)
            audio_sound_pitch(song[mus_bbbb],0.55)
        break;
        case 2: scr_nextframe(1) break;
        case 4: scr_nextframe(2) break;
        case 8:
            scr_nextframe(3)
            scr_stopsong(mus_bbbb,0)
        break;
        case 9:
            obj_cutscene.image_blend=c_black
            audio_play_sound(snd_cdboydeath,9999,false)
            pause=true
            alarm[3]=80
        break;
        case 11: scr_playsong(mus_kindaAbadass,0) break;
        case 16: scr_nextframe(6) break;
        case 20:
            scr_nextframe(7)
            scr_stopsong(mus_kindaAbadass,0)
            scr_playsong(mus_bozo,0)
        break;
        case 23: audio_pause_sound(song[mus_bozo]) break;
        case 24:
            scr_nextframe(8)
            audio_resume_sound(song[mus_bozo])
        break;
        case 32:
            scr_nextframe(9)
            scr_stopsong(mus_bozo,0.125)
        break;
        case 33: scr_nextframe(10) break;
        case 34:
            scr_nextframe(11)
            scr_playsong(mus_birthdayboy,0)
            audio_sound_pitch(song[mus_birthdayboy],2)
        break;
        case 37: scr_nextframe(12) break;
        case 38:
            scr_nextframe(13)
            scr_stopsong(mus_birthdayboy,1.5)
        break;
        case 40: scr_nextframe(14) break;
        case 41: scr_nextframe(15) break;
        case 42: scr_nextframe(16) break;
        case 44: scr_nextframe(17) break;
        case 45:
            scr_playsong(mus_specialguest,0.125)
            audio_sound_pitch(song[mus_specialguest],0.55)
        break;
        case 54:
            audio_pause_sound(song[mus_specialguest])
            audio_play_sound(snd_hoodie,9999,false)
            obj_cutscene.image_blend=c_black
            alarm[anext]=35
            pause=true
        break;
        case 55:
            scr_nextframe(18)
            obj_cutscene.image_blend=c_white
            audio_resume_sound(song[mus_specialguest])
            audio_sound_pitch(song[mus_specialguest],1)
        break;
        case 57: audio_resume_sound(mus_specialguest) break;
        case 78:
            scr_nextframe(19)
            scr_stopsong(mus_specialguest,0.125)
            scr_playsong(mus_player2,0)
        break;
        case 92:
            scr_nextframe(5)
            scr_stopsong(mus_player2,0)
            obj_cutscene.sprite_draw=spr_w0s2dialog1
        break;
        case 93: //spooky gunk jingle
            alarm[4]=120
            pause=true
            audio_play_sound(snd_spookygunk,9999,false)
        break;
    }
}
//cd boy is back for blood
if i=0 { sound=false }

