action_inherited();
///set cutscene sprites
if scr_textcheck() {
    //general updating
    switch(text) {
        case 1:
            scr_nextframe(1)
            scr_playsong(mus_brainrot,0);
            audio_stop_sound(snd_crowd);
        break;
        case 7:
            scr_nextframe(2)
            scr_stopsong(mus_brainrot,0)
            alarm[anext]=100
            pause=true
            audio_play_sound(snd_animewow,9999,false)
        break;
        case 8:
            scr_nextframe(3)
            scr_playsong(mus_pictocyan,0)
        break;
        case 16: //family guy cutaway gag
            scr_nextframe(4)
            alarm[anext]=130
            pause=true
            audio_pause_sound(song[mus_pictocyan])
            audio_play_sound(snd_crowd,9999,true)
        break;
        case 17:
            scr_nextframe(5)
            audio_stop_sound(snd_crowd)
            audio_resume_sound(song[mus_pictocyan])
        break;
        case 21:
            scr_nextframe(6)
            scr_stopsong(mus_pictocyan,5)
            alarm[3]=120
            pause=true
        break;
        case 22: scr_nextframe(9) break;
        case 27: //roomba
            scr_nextframe(4)
            alarm[4]=50
            pause=true
            audio_pause_sound(song[mus_popstar_min])
            audio_play_sound(snd_crowd,9999,true)
        break;
        case 28:
            scr_nextframe(9)
            audio_resume_sound(song[mus_popstar_min])
        break;
        case 35: scr_nextframe(10) break;
        case 36: scr_nextframe(11) break;
        case 42: scr_nextframe(12) break;
        case 43: scr_nextframe(13) break;
        case 46:
            scr_stopsong(mus_popstar_min,0.25)
            audio_play_sound(snd_plstart,9999,false)
            var pooby=audio_play_sound(snd_plmove,9999,true);
            audio_sound_gain(pooby,0.5,0)
            pause=true
            shaking=true
            alarm[anext]=45
        break;
        case 49:
            scr_nextframe(16)
            audio_play_sound(snd_dwuh,9999,false)
            shaking=false
            pause=true
            alarm[anext]=40
        break;
        case 51: 
            scr_nextframe(17) 
            var cyanb=audio_play_sound(snd_dwuh,9999,false)
            audio_sound_pitch(cyanb,0.85)
        break;
        case 55:
            audio_stop_sound(snd_plmove)
            audio_play_sound(snd_plstop,9999,false)
            obj_cutscene.visible=false
            pause=true
            alarm[anext]=70
        break;
        case 56:
            scr_nextframe(18)
            scr_playsong(mus_popstar,0)
            audio_play_sound(snd_crowd,9999,true)
            obj_cutscene.visible=true
        break;
        case 71: scr_stopsong(mus_popstar,1.75) break;
        case 74: scr_nextframe(19) break;
        case 75: scr_nextframe(20) break;
        case 78: scr_playsong(mus_cats,0) break;
        case 80: scr_nextframe(21) break;
        case 85: scr_nextframe(22) break;
        case 87:
            //switch to old frames
            obj_cutscene.sprite_draw=spr_w0s1dialog1
            scr_nextframe(5)
            scr_stopsong(mus_cats,0)
            audio_play_sound(snd_dudeayy,9999,false)
            audio_stop_sound(snd_crowd)
            alarm[apause]=audio_sound_length(snd_dudeayy)*30
            pu=false
            pause=true
        break;
        case 90: scr_nextframe(6) break;
        case 91:
            //change back frames
            obj_cutscene.sprite_draw=spr_w4s1dialog1
            scr_nextframe(23)
            alarm[anext]=60
            pause=true
            //splode
            audio_play_sound(snd_firework,9999,false)
            splode=1
        break;
        case 95:
            alarm[anext]=60
            pause=true
            //splode
            audio_play_sound(snd_firework,9999,false)
            splode=1
        break;
    }
}
//shaking platform
if shaking=true { scr_nextframe(14+irandom(1)) }
//fire works
if splode>=0 {
    splode-=0.025
}

