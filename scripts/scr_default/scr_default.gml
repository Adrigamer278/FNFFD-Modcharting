function scr_default() {
	//I don't know, its all pretty fuzzy.
	//Why do you want to know about this dream so badly?
	randomize();
	audio_play_sound(snd_default,9999,false)
	var s=surface_create(800,800)
	scr_shadercheck(shader_colorswap,c_white)
	surface_set_target(s)
	    var i;
	    var ii;
	    for(i=0;i<=800;i++) {
	        for(ii=0;ii<=200;ii++) {
	            var mim=obj_player.anim[irandom(8)];
	            draw_sprite_part_ext(mim,irandom(sprite_get_number(mim)),0,irandom(sprite_get_height(mim)),sprite_get_width(mim),sprite_get_height(mim),ii*4,i,800/sprite_get_width(mim),1,c_white,1)
	        }
	    }
	surface_reset_target();
	shader_reset();
	//create sprites
	idle[0]=sprite_create_from_surface(s,107,0,sprite_get_width(obj_player.idle[0]),sprite_get_height(obj_player.idle[0]),false,false,sprite_get_xoffset(obj_player.idle[0]),sprite_get_yoffset(obj_player.idle[0]))
	var idl;
	for (idl=0;idl<5;idl++) {
	    sprite_add_from_surface(idle[0],s,0,234*idl,107,234,false,false)
	}
	ayy=sprite_create_from_surface(s,irandom(800-100),irandom(800-200),100,200,false,false,50,200)
	var an;
	for (an=0;an<8;an++) {
	    var width=sprite_get_width(obj_player.anim[an]);//103+irandom(4);
	    var height=sprite_get_height(obj_player.anim[an]);//189+irandom(45);
	    anim[an]=sprite_create_from_surface(s,irandom(800-width),irandom(800-height),width,height,false,false,sprite_get_xoffset(obj_player.anim[an]),sprite_get_yoffset(obj_player.anim[an]))
	    var k;
	    for(k=0;k<=sprite_get_number(obj_player.anim[an]);k++) {
	        sprite_add_from_surface(anim[an],s,irandom(800-width),irandom(800-height),width,height,false,false)
	    }
	}
	framerate=framerate/2
	obj_stats.debug=true
	surface_free(s)



}
