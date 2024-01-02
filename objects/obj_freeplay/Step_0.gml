/// @description controlls
if keyboard_check_pressed(vk_up) or gamepad_button_check_pressed(0,gp_padu){
    sel--
}
if keyboard_check_pressed(vk_down) or gamepad_button_check_pressed(0,gp_padd){
    sel++
}
sel=clamp(sel,0,obj_stats.maxi+(obj_stats.mini*-1)-1)
//select
if keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(vk_enter) or gamepad_button_check_pressed(0,gp_face1) {
    if !instance_exists(obj_fadeout) {
        if sel+obj_stats.mini=obj_stats.mini {
            randomize();
            var randomalarm=round(random(3))
            audio_play_sound(snd_yoloalarm+randomalarm,999,false)
        } else {
            //REALLY COOL MATH THAT SUCKS LOL
            if sel>(obj_stats.mini*-1)-1 {
                var m=0
                var s=sel+obj_stats.mini
            } else {
                var m=1
                var s=(sel*-1)+(obj_stats.mini*-1)-1
            }
            //if locked
            if obj_stats.songlocked[m,s]=false {
                //is it a bonus song or not
                if sel>((obj_stats.mini+1)*-1) {
                    obj_stats.typegoing=0
                    obj_stats.weekgoing=sel+obj_stats.mini
                } else {
                    obj_stats.typegoing=1
                    obj_stats.weekgoing=(obj_stats.mini*-1)-sel-1
                }
                //bleg
                obj_stats.freeplay=true
                instance_create(0,0,obj_fadeout)
                obj_fadeout.roomgo=rm_stage
                audio_stop_sound(mus_menu)
                audio_play_sound(snd_josh,999,false)
            } else {
                audio_play_sound(snd_failure2,999,false)
            }
        }
    }
}
//back
if keyboard_check_pressed(ord("X")) or keyboard_check_pressed(vk_shift) or keyboard_check_pressed(vk_escape) or gamepad_button_check_pressed(0,gp_face2) {
    if !instance_exists(obj_fadeout) {
        instance_create(0,0,obj_fadeout)
        obj_fadeout.roomgo=rm_stuffselect
        obj_stats.freeplay=false
        obj_stats.typegoing=0
    }
}

