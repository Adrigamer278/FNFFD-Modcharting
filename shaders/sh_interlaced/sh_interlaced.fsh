//
// Simple passthrough fragment shader
//

//this doesn't work LOL

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 pixel = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
    
    
    //gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
}

