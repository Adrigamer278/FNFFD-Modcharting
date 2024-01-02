function scr_easing(argument0, argument1, argument2, argument3) {
	//scr_easing(time,start,dest-start,duration)
	return -argument2 * (power(argument0 / argument3 - 1, 4) - 1) + argument1;



}
