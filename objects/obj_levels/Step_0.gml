//exit
if keyboard_check_pressed(ord("X")) xor keyboard_check_pressed(vk_shift) xor gamepad_button_check_pressed(0,gp_face2) {
    if !instance_exists(obj_fadeout) {
        instance_create(0,0,obj_fadeout)
        obj_fadeout.roomgo=rm_stuffselect
    }
}
//switch options
if keyboard_check_pressed(vk_left) xor gamepad_button_check_pressed(0,gp_padl) {
    sel-=1
}
if keyboard_check_pressed(vk_right) xor gamepad_button_check_pressed(0,gp_padr) {
    sel+=1
}

if keyboard_check_pressed(vk_up) xor gamepad_button_check_pressed(0,gp_padu) {
    curMod-=1
}
if keyboard_check_pressed(vk_down) xor gamepad_button_check_pressed(0,gp_padd) {
    curMod+=1
}

curMod=clamp(curMod,0,array_length(validMods)-1)
var selMod = validMods[curMod]

sel=clamp(sel,0,array_length(selMod.menuWknds)-1)

//select
if ((keyboard_check_pressed(ord("Z")) xor keyboard_check_pressed(vk_enter) xor gamepad_button_check_pressed(0,gp_face1)) && !instance_exists(obj_fadeout)) {
    audio_stop_sound(mus_menu)
    audio_play_sound(snd_josh,999,false)
    instance_create(0,0,obj_fadeout)
    obj_fadeout.roomgo=rm_cutscenes
	
    //stats
	obj_stats.modgoing = array_get_index(obj_stats.loadedMods,selMod)
    obj_stats.weekgoing=0
	obj_stats.weeksonglist = selMod.menuWknds[sel].songs
    obj_stats.cutgoing=sel
    obj_stats.weekndgoing=sel
}

