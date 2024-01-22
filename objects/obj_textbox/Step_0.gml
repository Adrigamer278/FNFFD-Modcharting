/// @description text scrolling
ii=string_length(txt[text])
if pause=false {
    if i<ii {
        i++
        //voices
        switch(voice[text]) {
            case "dude": vsound=snd_dudetalk break;
            case "strad": vsound=snd_stradtalk break;
            case "lady": vsound=snd_ladytalk break;
            case "tv": vsound=snd_tvtalk break;
            case "cyan": vsound=snd_cyantalk break;
            case "cd": vsound=snd_cdboytalk break;
            case "cd-cyan": vsound=snd_cdboy_c break;
            case "CDEE": vsound=snd_cdboy_t break;
            case "CD-BOY": vsound=snd_cdboy_e break;
            case "buddy": vsound=snd_buddytalk break;
            case "vinyl": vsound=snd_vinyltalk break;
            case "gunk?": vsound=snd_gunktalk break;
            case "gunk": vsound=snd_gunktalk break;
            case "dan": vsound=snd_dantalk break;
            case "crowd": vsound=asset_get_index("snd_crowd"+string(irandom(3))) break;
            default: vsound=snd_errortalk break;
        }
        //talking
        var bleh=string_char_at(txt[text],i);
        if (bleh!=" " && round(i)=floor(i)) {
            if bleh="^" or bleh="✓" {
                i++
            } else {
                audio_play_sound(vsound,9999,false)
            }
        }
    }
    //enter
    if (keyboard_check_pressed(ord("Z")) xor keyboard_check_pressed(vk_enter) xor gamepad_button_check_pressed(0,gp_face1)) && i>=ii {
        if text=textmax  {
            instance_destroy();
        } else {
            scr_nextbox();
        }
    }
    //skip
    if (keyboard_check_pressed(ord("X")) xor keyboard_check_pressed(vk_shift) xor gamepad_button_check_pressed(0,gp_face2)) {
        i=ii
    }
}

