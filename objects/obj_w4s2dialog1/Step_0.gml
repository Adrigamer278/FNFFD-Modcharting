action_inherited();
///set cutscene sprites
if scr_textcheck() {
    switch(text) {
        case 1:
            obj_cutscene.visible=false
        break;
        case 2:
            scr_nextframe(4)
            scr_playsong(mus_popstar,0)
            audio_play_sound(snd_crowd,9999,true)
            obj_cutscene.visible=true
        break;
        case 4: scr_nextframe(0) break;
        case 5: scr_nextframe(1) break;
        case 6: scr_nextframe(3) break;
        case 7: scr_nextframe(4) break;
        case 12:
            scr_nextframe(5)
            audio_sound_pitch(song[mus_popstar],0.98)
        break;
        case 13:
            scr_nextframe(2)
            audio_sound_pitch(song[mus_popstar],1)
        break;
        case 16: //STRAD DUNK
            scr_nextframe(23)
            audio_pause_sound(song[mus_popstar])
            audio_pause_sound(snd_crowd)
            pause=true
            audio_play_sound(snd_straddunk,9999,false)
            alarm[anext]=audio_sound_length(snd_straddunk)*30
        break;
        case 17:
            scr_nextframe(2)
            audio_resume_sound(song[mus_popstar])
            audio_resume_sound(snd_crowd)
        break;
        case 18: //gunk flips her shit
            scr_nextframe(5)
            pause=true
            alarm[3]=90
        break;
        case 22: scr_nextframe(8) break;
        case 25: scr_nextframe(9) break;
        case 26:
            scr_stopsong(mus_popstar,10)
        break;
        case 31: scr_nextframe(10) break;
        case 32: 
            scr_nextframe(10)
            pause=true
            alarm[4]=10
        break;
        case 33:
            scr_nextframe(13)
        break;
        case 34:
            scr_nextframe(14)
            scr_playsong(mus_pictocyan,2)
            audio_sound_pitch(song[mus_pictocyan],0.75)
            pause=true
            alarm[5]=180
        break;
        case 35:
            scr_nextframe(16)
            scr_playsong(mus_gunkedup,0) 
        break;
        case 36:
            pause=true
            alarm[6]=6
        break;
        case 37:
            scr_nextframe(18)
        break;
        case 45: scr_nextframe(19) break;
        case 47:
            scr_stopsong(mus_gunkedup,1.25)
            coolfade=0
        break;
        case 48:
            //twinkle
            scr_stopsong(mus_gunkedup,0.125)
            pause=true
            alarm[anext]=180
            audio_play_sound(snd_gutsup,9999,false)
        break;
        case 49:
            scr_nextframe(21)
            coolfade=-1
            scr_playsong(mus_birthdaybash,0)
            instance_create(0,0,obj_fadein)
            obj_fadein.color=c_white
        break;
        case 55: 
            scr_stopsong(mus_birthdaybash,0)
            obj_cutscene.visible=false
        break;
    }
}
//coolfade
if coolfade!=-1 coolfade+=(1-coolfade)/8;
//flakeout
if flakeout audio_sound_pitch(song[mus_pictocyan],sin(current_time/70)*0.25*sin(current_time/40)+0.75)

