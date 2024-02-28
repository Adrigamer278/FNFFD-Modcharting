/// @description controlls
if keyboard_check_pressed(vk_up) or gamepad_button_check_pressed(0,gp_padu){
    sel--
}
if keyboard_check_pressed(vk_down) or gamepad_button_check_pressed(0,gp_padd){
    sel++
}

if keyboard_check_pressed(vk_left) or gamepad_button_check_pressed(0,gp_padl){
    curMod--
}
if keyboard_check_pressed(vk_right) or gamepad_button_check_pressed(0,gp_padr){
    curMod++
}

curMod = clamp(curMod,0,array_length(obj_stats.loadedMods)-1)
var selMod = obj_stats.loadedMods[curMod];

sel=clamp(sel,0,array_length(selMod.fpSongs)-1)
//select
if keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(vk_enter) or gamepad_button_check_pressed(0,gp_face1) {
    var curSong = selMod.fpSongs[sel]
	if !instance_exists(obj_fadeout) {
		
		if curSong.stats.locked {
			audio_play_sound(snd_failure2,999,false)
			return;
		}
		
		if curSong.misplaced {
			randomize();
            var randomalarm=round(random(3))
			if randomalarm = 0 { randomalarm = "" }

			// fix for higher gamemaker vers
            audio_play_sound( asset_get_index("snd_yoloalarm"+ string(randomalarm)),999,false)
		}
		
		if curSong.noEnter {
			return;
		}
		
		obj_stats.modgoing = curMod;
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

