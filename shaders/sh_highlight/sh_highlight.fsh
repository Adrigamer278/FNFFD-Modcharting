//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

//I HAVE NO IDEA WHAT IM DOING!!!!!!
//notice how this is just a copy of deklaswas's shader

uniform vec4 colorget;

uniform vec4 colorreplace;

//vec4 invis = vec4(0.0/255.0,0.0/255.0,0.0/255.0,0.0)

void main()
{
    vec4 pixelcheck = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
    
    //float range = 5.0 / 255.0;
    
    if(abs(pixelcheck.r - colorget.r) <= 0.001) {
        pixelcheck.rgb = colorreplace.rgb; //replace color
        gl_FragColor = pixelcheck;
    } //else {
        //pixelcheck.rgb = vec4(0.0/255.0,0.0/255.0,0.0/255.0,0.0).rgb; //make invisible (:
    //}

    //gl_FragColor = pixelcheck;
}

