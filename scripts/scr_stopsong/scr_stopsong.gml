/// @description scr_stopsong(song,fade out time)
/// @param song
/// @param fade out time
function scr_stopsong(argument0, argument1) {
	var sound=argument0;
	var time=argument1*1000;
	audio_sound_gain(song[sound],0,time)



}
