function scr_processcmdargs(){
	var args;
	args = parameter_count();

	for (i=0;i<args;i++) {
		var value = parameter_string(i+1);
		if value == "-chimpgame" {
			audio_stop_all();
			obj_stats.specialroom="chimpgame"
			room_goto(rm_special)
		} else if value=="-satellite" {
			obj_stats.specialroom="epicSecretSatellite"
			room_goto(rm_special)
		}
	}
}