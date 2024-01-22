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

sel=clamp(sel,0,array_length(obj_stats.categoriesData[catSel].weekMenuData)-1)

x+=(-400*sel-x)/5
//select
if ((keyboard_check_pressed(ord("Z")) xor keyboard_check_pressed(vk_enter) xor gamepad_button_check_pressed(0,gp_face1)) && !instance_exists(obj_fadeout)) {
    audio_stop_sound(mus_menu)
    audio_play_sound(snd_josh,999,false)
    instance_create(0,0,obj_fadeout)
    obj_fadeout.roomgo=rm_cutscenes
	
    //stats
	obj_stats.catgoing = catSel
    obj_stats.weekgoing=0
	obj_stats.weeksonglist = obj_stats.categoriesData[catSel].weekMenuData[sel].songs
    obj_stats.cutgoing=sel
    obj_stats.weekndgoing=sel
}

