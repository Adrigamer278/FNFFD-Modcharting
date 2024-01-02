//
// Simple passthrough fragment shader
//

//I never use this shader in game but I would use it for like
//giving characters shadows that aren't colored pure black
//so I can do fancy shading!!!!!!! like shading blue with purple!!!!

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec4 colorreplace;

//vec4 invis = vec4(0.0/255.0,0.0/255.0,0.0/255.0,0.0)

void main()
{
    vec4 pixelcheck = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
    
    if(abs(pixelcheck.a) > 0.0) {
        pixelcheck.rgb = colorreplace.rgb; //replace color
        gl_FragColor = pixelcheck;
    }
}

