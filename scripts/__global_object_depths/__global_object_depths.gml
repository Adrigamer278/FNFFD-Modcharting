function __global_object_depths() {
	// Initialise the global array that allows the lookup of the depth of a given object
	// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
	// NOTE: MacroExpansion is used to insert the array initialisation at import time
	gml_pragma( "global", "__global_object_depths()");

	// insert the generated arrays here
	global.__objectDepths[0] = 0; // obj_midi_clock
	global.__objectDepths[1] = -159383553; // obj_stats
	global.__objectDepths[2] = 0; // obj_song
	global.__objectDepths[3] = -9; // obj_levels
	global.__objectDepths[4] = -4; // obj_selectwords
	global.__objectDepths[5] = 0; // obj_cheatcodes
	global.__objectDepths[6] = 0; // obj_freeplay
	global.__objectDepths[7] = 0; // obj_options
	global.__objectDepths[8] = 0; // obj_discord
	global.__objectDepths[9] = -99; // obj_titlewords
	global.__objectDepths[10] = 0; // obj_titlegf
	global.__objectDepths[11] = 0; // obj_bwords
	global.__objectDepths[12] = -999; // obj_titleenter
	global.__objectDepths[13] = 0; // obj_controlwarning
	global.__objectDepths[14] = -9; // obj_charting
	global.__objectDepths[15] = 0; // obj_notespace
	global.__objectDepths[16] = 0; // obj_notecreater
	global.__objectDepths[17] = 99999; // obj_uinotes
	global.__objectDepths[18] = 99; // obj_note
	global.__objectDepths[19] = -99999; // obj_camera
	global.__objectDepths[20] = -99999; // obj_player
	global.__objectDepths[21] = 0; // obj_gameover
	global.__objectDepths[22] = 0; // obj_lady
	global.__objectDepths[23] = -99999; // obj_badguy
	global.__objectDepths[24] = -99999; // obj_mimic
	global.__objectDepths[25] = 9; // obj_backgroundp1
	global.__objectDepths[26] = -99999; // obj_tutorialguys
	global.__objectDepths[27] = -9; // obj_tutorialtable
	global.__objectDepths[28] = 0; // obj_snowflake
	global.__objectDepths[29] = 0; // obj_georgetrain
	global.__objectDepths[30] = 0; // obj_georgeghost
	global.__objectDepths[31] = 0; // obj_nermal
	global.__objectDepths[32] = -3; // obj_nermaljump
	global.__objectDepths[33] = 0; // obj_nermalnyan
	global.__objectDepths[34] = -99; // obj_cdboyow
	global.__objectDepths[35] = 0; // obj_danbg
	global.__objectDepths[36] = 0; // obj_w0s1dialog1
	global.__objectDepths[37] = 0; // obj_w0s2dialog1
	global.__objectDepths[38] = 0; // obj_w1s1dialog1
	global.__objectDepths[39] = 0; // obj_w1s2dialog1
	global.__objectDepths[40] = 0; // obj_w1s2dialog2
	global.__objectDepths[41] = 0; // obj_w2s1dialog1
	global.__objectDepths[42] = 0; // obj_w2s2dialog1
	global.__objectDepths[43] = 0; // obj_w2s2dialog2
	global.__objectDepths[44] = 0; // obj_w3s1dialog1
	global.__objectDepths[45] = -1; // obj_w3s2dialog1
	global.__objectDepths[46] = 0; // obj_w3s2dialog2
	global.__objectDepths[47] = 0; // obj_w4s1dialog1
	global.__objectDepths[48] = 0; // obj_w4s2dialog1
	global.__objectDepths[49] = 0; // obj_w4s2dialog2
	global.__objectDepths[50] = 1; // obj_cutscene
	global.__objectDepths[51] = 0; // obj_unlocksong
	global.__objectDepths[52] = 0; // obj_csndialog1
	global.__objectDepths[53] = -9; // obj_textbox
	global.__objectDepths[54] = -9999; // obj_fadeout
	global.__objectDepths[55] = -9999; // obj_fadein
	global.__objectDepths[56] = 0; // obj_chimpgame
	global.__objectDepths[57] = 0; // obj_recordsratch
	global.__objectDepths[58] = 0; // obj_fireworkcreator
	global.__objectDepths[59] = 0; // obj_mousedemo
	global.__objectDepths[60] = 0; // obj_special
	global.__objectDepths[61] = 0; // obj_soundtest


	global.__objectNames[0] = "obj_midi_clock";
	global.__objectNames[1] = "obj_stats";
	global.__objectNames[2] = "obj_song";
	global.__objectNames[3] = "obj_levels";
	global.__objectNames[4] = "obj_selectwords";
	global.__objectNames[5] = "obj_cheatcodes";
	global.__objectNames[6] = "obj_freeplay";
	global.__objectNames[7] = "obj_options";
	global.__objectNames[8] = "obj_discord";
	global.__objectNames[9] = "obj_titlewords";
	global.__objectNames[10] = "obj_titlegf";
	global.__objectNames[11] = "obj_bwords";
	global.__objectNames[12] = "obj_titleenter";
	global.__objectNames[13] = "obj_controlwarning";
	global.__objectNames[14] = "obj_charting";
	global.__objectNames[15] = "obj_notespace";
	global.__objectNames[16] = "obj_notecreater";
	global.__objectNames[17] = "obj_uinotes";
	global.__objectNames[18] = "obj_note";
	global.__objectNames[19] = "obj_camera";
	global.__objectNames[20] = "obj_player";
	global.__objectNames[21] = "obj_gameover";
	global.__objectNames[22] = "obj_lady";
	global.__objectNames[23] = "obj_badguy";
	global.__objectNames[24] = "obj_mimic";
	global.__objectNames[25] = "obj_backgroundp1";
	global.__objectNames[26] = "obj_tutorialguys";
	global.__objectNames[27] = "obj_tutorialtable";
	global.__objectNames[28] = "obj_snowflake";
	global.__objectNames[29] = "obj_georgetrain";
	global.__objectNames[30] = "obj_georgeghost";
	global.__objectNames[31] = "obj_nermal";
	global.__objectNames[32] = "obj_nermaljump";
	global.__objectNames[33] = "obj_nermalnyan";
	global.__objectNames[34] = "obj_cdboyow";
	global.__objectNames[35] = "obj_danbg";
	global.__objectNames[36] = "obj_w0s1dialog1";
	global.__objectNames[37] = "obj_w0s2dialog1";
	global.__objectNames[38] = "obj_w1s1dialog1";
	global.__objectNames[39] = "obj_w1s2dialog1";
	global.__objectNames[40] = "obj_w1s2dialog2";
	global.__objectNames[41] = "obj_w2s1dialog1";
	global.__objectNames[42] = "obj_w2s2dialog1";
	global.__objectNames[43] = "obj_w2s2dialog2";
	global.__objectNames[44] = "obj_w3s1dialog1";
	global.__objectNames[45] = "obj_w3s2dialog1";
	global.__objectNames[46] = "obj_w3s2dialog2";
	global.__objectNames[47] = "obj_w4s1dialog1";
	global.__objectNames[48] = "obj_w4s2dialog1";
	global.__objectNames[49] = "obj_w4s2dialog2";
	global.__objectNames[50] = "obj_cutscene";
	global.__objectNames[51] = "obj_unlocksong";
	global.__objectNames[52] = "obj_csndialog1";
	global.__objectNames[53] = "obj_textbox";
	global.__objectNames[54] = "obj_fadeout";
	global.__objectNames[55] = "obj_fadein";
	global.__objectNames[56] = "obj_chimpgame";
	global.__objectNames[57] = "obj_recordsratch";
	global.__objectNames[58] = "obj_fireworkcreator";
	global.__objectNames[59] = "obj_mousedemo";
	global.__objectNames[60] = "obj_special";
	global.__objectNames[61] = "obj_soundtest";


	// create another array that has the correct entries
	var len = array_length_1d(global.__objectDepths);
	global.__objectID2Depth = [];
	for( var i=0; i<len; ++i ) {
		var objID = asset_get_index( global.__objectNames[i] );
		if (objID >= 0) {
			global.__objectID2Depth[ objID ] = global.__objectDepths[i];
		} // end if
	} // end for


}
