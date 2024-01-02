/// @description scr_fpadd(name, icon increase)
/// @param name
/// @param  icon increase
function scr_fpadd(argument0, argument1) {
	songs[soap]=argument0
	if soap>0 {
	    icon[soap]=icon[soap-1]+argument1
	} else {
	    icon[0]=0
	}
	soap++



}
