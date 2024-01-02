varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float Time;
uniform vec2 Texel;
//x vars
const float xSpeed = 0.001;
const float xFreq = 50.0;
const float xSize = 1.0;
//y vars
const float ySpeed = 0.0;
const float yFreq = 0.0;
const float ySize = 0.0;

void main()
{
    float xWave = sin(Time*xSpeed + v_vTexcoord.y*xFreq) * (xSize*Texel.x);
    float yWave = sin(Time*ySpeed + v_vTexcoord.y*yFreq) * (ySize*Texel.y);
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord + vec2(xWave, yWave));
}
