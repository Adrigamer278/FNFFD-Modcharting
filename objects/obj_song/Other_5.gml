/// @description clear sprites and surfaces
if sprite_exists(spr_screenborder) { sprite_delete(spr_screenborder) }
//sprite_delete(spr_skipintro)
surface_free(ui)
surface_free(notesurf)
surface_free(ntscsurface)

if instance_exists(obj_modchart) {
	instance_destroy(obj_modchart);
}

///clearing song unique surfaces
if obj_stats.modgoing = 0 {
	switch(obj_stats.songgoing.name) {
	    case "twinkle": //twinkle
	        //tv screens
	        var v;
	        for(v=0;v<=15;v++) {
	            surface_free(screen[v,1])
	        }
	        //anime
	        surface_free(dudeasurf)
	        surface_free(buddyasurf)
	        //dingle
	        surface_free(dingle)
	    break;
	    case "tsunami": //tsunami
	        //tv screens
	        var v;
	        for(v=0;v<=15;v++) {
	            surface_free(screen[v,1])
	        }
	        //pre jumpscare cd boy
	        with(obj_badguy) { surface_free(cdboy); }
	    break;
	    case "starfire": //starfire
	        surface_free(gunkscreen)
	        surface_free(dudescreen)
			if sprite_exists(gunkfreeze) { sprite_delete(gunkfreeze) }
	        if sprite_exists(dudefreeze) { sprite_delete(dudefreeze) }
	    break;
	}
}

///dan
audio_stop_sound(mus_fumpsbreakfast)

