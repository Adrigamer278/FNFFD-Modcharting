/// @description scr_silhouette(color replace)
/// @param color replace
function scr_silhouette(argument0) {
	//variables
	var colorreplace = shader_get_uniform(sh_silhouette,"colorreplace");
	//set shader
	shader_set(sh_silhouette)
	shader_set_uniform_f(colorreplace,color_get_red(argument0)/255,color_get_green(argument0)/255,color_get_blue(argument0)/255);



}
