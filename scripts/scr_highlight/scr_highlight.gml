/// @description scr_highlight(color replace,color highlight)
/// @param color replace
/// @param color highlight
function scr_highlight(argument0, argument1) {
	//variables
	var colorget = shader_get_uniform(sh_highlight,"colorget");
	var colorreplace = shader_get_uniform(sh_highlight,"colorreplace");
	//set shader
	shader_set(sh_highlight)
	shader_set_uniform_f(colorget,color_get_red(argument0)/255,color_get_green(argument0)/255,color_get_blue(argument0)/255);
	shader_set_uniform_f(colorreplace,color_get_red(argument1)/255,color_get_green(argument1)/255,color_get_blue(argument1)/255);



}
