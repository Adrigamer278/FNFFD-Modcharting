function scr_skinswapdude(argument0) {
	//variables
	var sh_handle_hat = shader_get_uniform(shader_colorswap,"colorReplaceHat");
	var sh_handle_skin = shader_get_uniform(shader_colorswap,"colorReplaceSkin");
	var sh_handle_hair = shader_get_uniform(shader_colorswap,"colorReplaceHair");

	var sh_handle_shirt = shader_get_uniform(shader_colorswap,"colorReplaceShirt");
	var sh_handle_stripe = shader_get_uniform(shader_colorswap,"colorReplaceStripe");

	var sh_handle_pants = shader_get_uniform(shader_colorswap,"colorReplacePants");
	var sh_handle_shoes = shader_get_uniform(shader_colorswap,"colorReplaceShoes");

	//image hue
	var sh_handle_hue = shader_get_uniform(shader_colorswap,"hue");

	//shader
	shader_set(shader_colorswap)
	//leave these values as 1 if you do not want a hue
	var huered = 1
	var huegreen = 1
	var hueblue = 1

	var huecolor = argument0

	//make sure your values for red green and blue are between 0 and 1.
	huered = color_get_red(huecolor)/255
	hueblue = color_get_blue(huecolor)/255
	huegreen = color_get_green(huecolor)/255

	shader_set_uniform_f(sh_handle_hue,huered,huegreen,hueblue)

	with(obj_stats) {
	    shader_set_uniform_f(sh_handle_hat,color_get_blue(colorhat)/255,color_get_green(colorhat)/255,color_get_red(colorhat)/255)
	    shader_set_uniform_f(sh_handle_skin,color_get_blue(colorskin)/255,color_get_green(colorskin)/255,color_get_red(colorskin)/255)
	    shader_set_uniform_f(sh_handle_hair,color_get_blue(colorhair)/255,color_get_green(colorhair)/255,color_get_red(colorhair)/255)
        
	    shader_set_uniform_f(sh_handle_shirt,color_get_blue(colorshirt)/255,color_get_green(colorshirt)/255,color_get_red(colorshirt)/255)
	    shader_set_uniform_f(sh_handle_stripe,color_get_blue(colorstripe)/255,color_get_green(colorstripe)/255,color_get_red(colorstripe)/255)
        
	    shader_set_uniform_f(sh_handle_pants,color_get_blue(colorpants)/255,color_get_green(colorpants)/255,color_get_red(colorpants)/255)
	    shader_set_uniform_f(sh_handle_shoes,color_get_blue(colorshoes)/255,color_get_green(colorshoes)/255,color_get_red(colorshoes)/255)
	}



}
