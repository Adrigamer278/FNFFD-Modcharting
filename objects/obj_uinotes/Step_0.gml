//what note am I???

if instance_exists(obj_modchart) {
	var offsets = obj_modchart.runModifiers(self,0);
	
	var finalPos = obj_modchart.calculatePerspective(offsets.x,offsets.y,offsets.z);
	
	//show_debug_message("render")
	//show_debug_message(offsets)
	//show_debug_message(finalPos)
	
	var zScale = finalPos[2]
	
	x = finalPos[0];
	y = finalPos[1];
	image_alpha = offsets.alpha;
	image_angle = offsets.angle;
	image_xscale = offsets.scale.x * (1/-zScale);
	image_yscale = offsets.scale.y * (1/-zScale);
}

if obj_song.paused=false {
    if note>=obj_song.notes {
        var bich;
        var bichgamepad;
        bich=obj_stats.bind[(note-obj_song.notes)+plus]
        if keyboard_check_pressed(bich) or gamepad_button_check_pressed(0,bich+4){
            press=true
            alarm[0]=5
        }
    }
}


