/// @description delta mult thing
deltaMult = (delta_time/1000000) / (1/60)
if instance_exists(obj_song) {
	deltaMult*=obj_song.songRate
}



