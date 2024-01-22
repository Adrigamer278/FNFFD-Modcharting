/// @description controlls
if keyboard_check_pressed(vk_up) or gamepad_button_check_pressed(0,gp_padu){
    sel--
}
if keyboard_check_pressed(vk_down) or gamepad_button_check_pressed(0,gp_padd){
    sel++
}

if keyboard_check_pressed(vk_left) or gamepad_button_check_pressed(0,gp_padl){
    curCat--
}
if keyboard_check_pressed(vk_right) or gamepad_button_check_pressed(0,gp_padr){
    curCat++
}

curCat = clamp(curCat,0,array_length(obj_stats.categoriesData)-1)
sel=clamp(sel,0,array_length(obj_stats.categoriesData[curCat].songs)-1)
//select
if keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(vk_enter) or gamepad_button_check_pressed(0,gp_face1) {
    var curSong = obj_stats.categoriesData[curCat].songs[sel]
	if !instance_exists(obj_fadeout) {
		
		if curSong[1].locked {
			audio_play_sound(snd_failure2,999,false)
			return;
		}
		
		if curSong[4].misplaced {
			randomize();
            var randomalarm=round(random(3))
			if randomalarm = 0 { randomalarm = "" }

			// fix for higher gamemaker vers
            audio_play_sound( asset_get_index("snd_yoloalarm"+ string(randomalarm)),999,false)
		}
		
		if curSong[4].blockEnter {
			return;
		}
		
		obj_stats.catgoing = curCat;
		obj_stats.songgoing = curSong;

		//bleg
		obj_stats.freeplay=true
		instance_create(0,0,obj_fadeout)
		obj_fadeout.roomgo=rm_stage
		audio_stop_sound(mus_menu)
		audio_play_sound(snd_josh,999,false)
    }
}
//back
if keyboard_check_pressed(ord("X")) or keyboard_check_pressed(vk_shift) or keyboard_check_pressed(vk_escape) or gamepad_button_check_pressed(0,gp_face2) {
    if !instance_exists(obj_fadeout) {
        instance_create(0,0,obj_fadeout)
        obj_fadeout.roomgo=rm_stuffselect
        obj_stats.freeplay=false
    }
}

