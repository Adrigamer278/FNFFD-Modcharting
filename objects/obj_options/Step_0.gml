if keyboard_check_pressed(ord("G")) {
    screen_save(string(current_time)+".png")
}
if mappingkeys=false && changingskin=false {
//moving cursor
    if keyboard_check_pressed(vk_up) or gamepad_button_check_pressed(0,gp_padu){
        sel--
    }
    if keyboard_check_pressed(vk_down) or gamepad_button_check_pressed(0,gp_padd) {
        sel++
    }
    sel=clamp(sel,0,sels)
//updating text
    //downscroll
    if obj_stats.downscroll=false {
        var coolboys = "false"
    } else {
        var coolboys = "true"
    }
    options[0]=(string("DOWNSCROLL: ")+string(coolboys))
    //note tpyes
    if obj_stats.readable = false {
        var burger="funny"
    } else {
        var burger="readable"
    }
    options[3]=(string("NOTE TYPE: ")+string(burger))
//select something
    if (keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(vk_enter) or gamepad_button_check_pressed(0,gp_face1)) {
        switch(sel) {
        case 0: //downscroll
            with(obj_stats) {
                downscroll=!downscroll
            }
        break;
        case 1: //ghost tapping
            audio_stop_all();
            obj_stats.specialroom="chimpgame"
            room_goto(rm_special)
        break;
        case 2:
            keyd=0
            wait=5
            mappingkeys=true
        break;
        case 3: //readable notes
            with(obj_stats) {
                readable=!readable
            }
        break;
        case 4:
            wait=5
            changingskin=true
        break;
        }   
    }
//now get out
    if (keyboard_check_pressed(ord("X")) or keyboard_check_pressed(vk_shift) or keyboard_check_pressed(vk_escape) or gamepad_button_check_pressed(0,gp_face2)) {
        instance_create(0,0,obj_fadeout)
        obj_fadeout.roomgo=rm_stuffselect
    }
} 
if mappingkeys=true { //maping keys
    //WAIT, yeah im an idiot and need to delay this stuf lol
    if (keyboard_check_pressed(keyboard_lastkey) && wait = 0) {
        obj_stats.bind[keyd]=keyboard_lastkey
        wait=5
        if keyd<3 {
            keyd++
        } else {
            mappingkeys=false
        }
    }
}
wait--
wait=clamp(wait,0,10)

