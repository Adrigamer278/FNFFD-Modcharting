//
// Simple passthrough fragment shader
//

varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec3 v_vPosition;

//If you want to add a new color to swap, make sure you add a new uniform vector and normal vector.
//Basically, just copy the way it is done for preexisting colors

//thank u deklaswas

uniform vec4 hue; // general hue

// default colors
vec4 colorHat = vec4(140.0/255.0, 151.0/255.0, 194.0/255.0, 1.0);
vec4 colorSkin = vec4(238.0/255.0, 214.0/255.0, 196.0/255.0, 1.0);
vec4 colorHair = vec4(71.0/255.0, 62.0/255.0, 56.0/255.0, 1.0);
vec4 colorShirt = vec4(215.0/255.0, 121.0/255.0, 156.0/255.0, 1.0);
vec4 colorStripe = vec4(101.0/255.0, 54.0/255.0, 98.0/255.0, 1.0);
vec4 colorPants = vec4(97.0/255.0, 87.0/255.0, 146.0/255.0, 1.0);
vec4 colorShoes = vec4(56.0/255.0, 54.0/255.0, 68.0/255.0, 1.0);

// uniforms
uniform vec4 colorReplaceHat;
uniform vec4 colorReplaceSkin;
uniform vec4 colorReplaceHair;
uniform vec4 colorReplaceShirt;
uniform vec4 colorReplaceStripe;
uniform vec4 colorReplacePants;
uniform vec4 colorReplaceShoes;

uniform float alphaMult;
uniform float rainbowAmmo; // how much rainbow (0 - 1)
uniform float sTime; // song time elapsed

//#define range = 5.0/255.0;

void main()
{
    vec4 pixelColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	float range = 5.0/255.0;
	float isPartColor = 0.0;

    if(abs(pixelColor.r - colorHat.r) <= range) {
        if(abs(pixelColor.g - colorHat.g) <= range) {
            if(abs(pixelColor.b - colorHat.b) <= range) {
				isPartColor = 1.0;
                pixelColor.rgb = colorReplaceHat.rgb;
            }
        }
    }
    if(abs(pixelColor.r - colorSkin.r) <= range) {
        if(abs(pixelColor.g - colorSkin.g) <= range) {
            if(abs(pixelColor.b - colorSkin.b) <= range) {
				isPartColor = 1.0;
                pixelColor.rgb = colorReplaceSkin.rgb;
            }
        }
    }
                
    if(abs(pixelColor.r - colorHair.r) <= range) {     
        if(abs(pixelColor.g - colorHair.g) <= range) {
            if(abs(pixelColor.b - colorHair.b) <= range) {
				isPartColor = 1.0;
                pixelColor.rgb = colorReplaceHair.rgb;
            } 
        }
    }
    
    
    if(abs(pixelColor.r - colorShirt.r) <= range) {
        if(abs(pixelColor.g - colorShirt.g) <= range) {
            if(abs(pixelColor.b - colorShirt.b) <= range) {
				isPartColor = 1.0;
                pixelColor.rgb = colorReplaceShirt.rgb;
            }
        }
    }
    
    
    if(abs(pixelColor.r - colorStripe.r) <= range) {
        if(abs(pixelColor.g - colorStripe.g) <= range) {
            if(abs(pixelColor.b - colorStripe.b) <= range) {
				isPartColor = 1.0;
                pixelColor.rgb = colorReplaceStripe.rgb;
            }
        }
    }
    
    
    if(abs(pixelColor.r - colorPants.r) <= range) {
        if(abs(pixelColor.g - colorPants.g) <= range) {
            if(abs(pixelColor.b - colorPants.b) <= range) {
				isPartColor = 1.0;
                pixelColor.rgb = colorReplacePants.rgb;
            }
        }
    }
    if(abs(pixelColor.r - colorShoes.r) <= range) {
        if(abs(pixelColor.g - colorShoes.g) <= range) {
            if(abs(pixelColor.b - colorShoes.b) <= range) {
				isPartColor = 1.0;
                pixelColor.rgb = colorReplaceShoes.rgb;
            }
        }
    }
	
	if (isPartColor==1.) {
		if (alphaMult>0.) { // if its 0 why would you do math
			pixelColor.r *= hue.r;
		    pixelColor.g *= hue.g;
		    pixelColor.b *= hue.b;
	
			if (rainbowAmmo>0.) { // no rainbow math if no rainbow lol
				float hue = v_vPosition.x/250.0 * cos(90.0) - v_vPosition.y/250.0 * sin(90.0);
			    hue = fract(hue + fract(sTime  * 0.5)) * 1.1;
    
				float x = 1.05 - (abs(mod(hue / (1./ 6.), 2.) - 1.));
    
				vec3 rainbow;
    
				if(hue < 1./6.){
					rainbow = vec3(1., x, 0.);
				} else if (hue < 1./3.) {
					rainbow = vec3(x, 1., 0);
				} else if (hue < 0.5) {
					rainbow = vec3(0, 1., x);
				} else if (hue < 2./3.) {
					rainbow = vec3(0., x, 1.);
				} else if (hue < 5./6.) {
					rainbow = vec3(x, 0., 1.);
				} else {
					rainbow = vec3(1., 0., x);
				}
	
				pixelColor = mix(pixelColor,vec4(rainbow,1.0),(1.0-isPartColor)-rainbowAmmo);	
			}
		}
		
		pixelColor.a *= alphaMult;
	}
	
	//pixelColor.a *= clamp(sTime/(v_vPosition.y/10.0)*5.0,0.0,1.0);
    
    gl_FragColor = pixelColor;
}
