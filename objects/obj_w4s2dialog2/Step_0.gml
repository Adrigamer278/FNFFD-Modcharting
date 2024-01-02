//scuffed car fix
if text=22 freezescuff=true;
//wavey stuff
if text>40 && text!=textmax {
    if moop<1.2 {
        waveint+=0.0055//if waveint>=20 { waveint+=0.025 } //else { text=textmax }
        moop+=0.0045
    } else {
        text=textmax
        update=true
        i=0
    }
    if i<string_length(txt[text]) {
        switch(voice[text]) {
            case "dude": vsound=snd_dudetalk break;
            case "strad": vsound=snd_stradtalk break;
            default: vsound=snd_errortalk break;
        }
        //talking
        var bleh=string_char_at(txt[text],i);
        if (bleh!=" " && i=round(i)) {
            if bleh="^" {
                i++
            } else {
                var soundy = audio_play_sound(vsound,9999,false)
                audio_sound_gain(soundy,1-(moop*1.25),0)
            }
        }
        //make the textboxes scroll ever so slower
        if fi>=1 {
            fi-=1
            i++
        } else {
            fi+=0.70
        }
    } else {
        scr_nextbox()
    }
} else if !(text=23 && freezescuff=true) {
    action_inherited();
}
if scr_textcheck() {
    //general updating
    switch(text) {
        case 1:
            obj_cutscene.visible=false
        break;
        case 2:
            scr_nextframe(0)
            scr_playsong(mus_birthdaybash,0)
            instance_create(0,0,obj_fadein)
            obj_fadein.color=c_white
            obj_cutscene.visible=true
        break;
        case 3: scr_nextframe(1) break;
        case 11:
            scr_nextframe(2)
            scr_stopsong(mus_birthdaybash,1)
        break;
        case 12:
            pause=true
            splode=1
            alarm[anext]=100
            audio_play_sound(snd_firework,0,false)
        break;
        case 13: scr_playsong(mus_spotlights,7) break;
        case 14: scr_nextframe(5) break;
        //case 17: scr_nextframe(15) break;
        case 23: //car
            pause=true
            alarm[4]=65
            scr_nextframe(20)
        break;
        case 30: scr_nextframe(21) break;
        case 34: scr_nextframe(22) break;
        case 36: scr_nextframe(23) break;
        case 40:
            wavebox=true
            i=0
            scr_stopsong(mus_you_probably_should_be_gettin_home,9)
            scr_nextframe(24)
        break;
        case textmax:
            wavebox=false
            obj_cutscene.visible=false
        break;
    }
    //special updating
}
//fire works
if splode>=0 {
    splode-=0.025
}
switch(text) {
    case 14:
        if i>=(string_length(txt[text])-4) && fall=false {
            scr_nextframe(5)
            alarm[3]=1
            fall=true
            pause=true
        }
    break;
    case 22:
        if i>=60 {
            fade=1
            audio_stop_sound(mus_spotlights)
        }
    break;
    case 23:
        if fade>=0 && carallow=true {
            fade-=0.0027
        }
        var audiopos=audio_sound_get_track_position(song[mus_you_probably_should_be_gettin_home])
        if audiopos<=7.18 {
            scr_nextframe(19)
        }
        if audiopos>=7.18 && audiopos<= 12.318 {
            scr_nextframe(17)
        }
        if audiopos>=12.318 && audiopos<= 16.618 {
            scr_nextframe(18)
        }
        if audiopos>=16.18 && audiopos<20.782 {
            scr_nextframe(16)
        }
        if audiopos>=20.782 {
            pause=false
            freezescuff=false
            scr_nextframe(20)
        }
    break;
}

