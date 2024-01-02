/// @description scr_shadercheck(shader name, shader arguments)
/// @param shader name
/// @param  shader arguments
function scr_shadercheck() {

	/*
	This is a VERY temporary fix. This was thrown together
	in a couple days, the code in the stagehand script is 
	very sloppy and rushed. but it works!!!
	...This is a very temporary fix :^7
	*/

	var shader=argument[0]
	//if shaders_are_supported() && shader_is_compiled(shader) && shaderdisabled=false{
	if shaderbroke=false && shaderdisabled=false {
	    switch(shader) {
	        case shader_colorswap: scr_skinswapdude(argument[1]); break;
	        case sh_highlight: scr_highlight(argument[1],argument[2]) break;
	        case sh_silhouette: scr_silhouette(argument[1]); break;
	        case sh_ntsc:
	            shader_set(sh_ntsc);
	            var _bleeding_width = floor(shader_get_uniform(sh_ntsc, "f_screenWidth"))
	            var _bleeding_height = floor(shader_get_uniform(sh_ntsc, "f_screenHeight"))
	            var _bleeding_bleeding = floor(shader_get_uniform(sh_ntsc, "f_bleeding"))
	            //shader_set_uniform_f(_bleeding_width, 1.0/(window_width*surface_aspect));
	            //shader_set_uniform_f(_bleeding_height, 1.0/(window_height*surface_aspect));
	            shader_set_uniform_f(_bleeding_width, 1/window_get_width());
	            shader_set_uniform_f(_bleeding_height, 1/window_get_height());
	            shader_set_uniform_f(_bleeding_bleeding, 3);
	        break;
	        case sh_ntsc2:
	            squigliness_invert_value *= -1;
	            shader_set(sh_ntsc2);
	            //cool vars
	            var multiplier_map = shader_get_sampler_index(sh_ntsc2,"mult");
	            texture_set_stage(multiplier_map, sprite_get_texture(mult,0));
	            var squigliness_map = shader_get_sampler_index(sh_ntsc2,"squig");
	            texture_set_stage(squigliness_map, sprite_get_texture(squig,0));
	            var squigliness_map = shader_get_sampler_index(sh_ntsc2,"overlay");
	            texture_set_stage(squigliness_map, sprite_get_texture(overlay,0));
	            var squigliness_invert = shader_get_uniform(sh_ntsc2, "squiginv");
	            //shader values
	            texture_set_stage(multiplier_map, sprite_get_texture(mult,0));
	            texture_set_stage(squigliness_map, sprite_get_texture(squig,0));
	            texture_set_stage(squigliness_map, sprite_get_texture(overlay,0));
	            shader_set_uniform_f(squigliness_invert, squigliness_invert_value);
	        break;
	    }
	    return true;
	} else {
	    return false;
	}



}
