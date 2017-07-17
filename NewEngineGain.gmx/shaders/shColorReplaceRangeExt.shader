//
// Simple passthrough vertex shader
//
attribute vec3 in_Position;                  // (x,y,z)
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~//
//  shColorReplaceRangeExt
//
//      Replaces a range of colors with a second range of colors.
//      Color ranges are given by two endpoints in RGB colorspace.
//      Colors in the input range are linear mapped to the output range.
//      Multiple color ranges are defines with vec4 arrays. Currently up to 
//      three color ranges can be defined. This can be easily extended by
//      altering the uniform array declaration code below from [2] to [n-1],
//      where n is the number of ranges you wish to support.
//
//      colorIn0,1      define input color range
//      colorOut0,1     define output color range
//      colorNum        number of color ranges defined
//      colorPhase      0.0 normally, the interval [0,1.0] cycles the output for animation
//      colorRepeat     1.0 normally, other values repeat the output range by that many times
//      colorReflect    0.0 for sawtooth wave output, 1.0 for triangle wave output
//      colorTolerance  1/255 normally, greater values match colors more liberally
//      colorPerturb    0.0 to leave output range pure, other values add color matching error
//
//  GMLscripts.com
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec4 colorIn0[2];
uniform vec4 colorIn1[2];
uniform vec4 colorOut0[2];
uniform vec4 colorOut1[2];
uniform float colorPhase[2];
uniform float colorRepeat[2];
uniform float colorReflect[2];
uniform float colorTolerance[2];
uniform float colorPerturb[2];
uniform int colorNum;

void main()
{
    vec4 colorPixel = texture2D( gm_BaseTexture, v_vTexcoord );
    vec4 result = colorPixel;
    
    float bestDist = 10.0;
    vec4 bestNearest = vec4(-10.0);
    
    vec4 delta,colorNearest;
    float t,dist;
    for (int i=0; i<colorNum; i++)
    {
        delta = colorIn1[i] - colorIn0[i];
        if (length(delta) == 0.0) {
            t = 0.0; 
            colorNearest = colorIn0[i];
        }else{
            t = clamp( dot( colorPixel - colorIn0[i], delta ) / dot(delta, delta), 0.0, 0.99999 );
            colorNearest = colorIn0[i] + delta * t;
        }
        dist = distance( colorPixel, colorNearest );
        if (dist < bestDist && dist < colorTolerance[i]) 
        {
            bestDist = dist;
            
            result = mix( colorOut0[i], 
                          colorOut1[i], 
                          abs( ( 1.0 + colorReflect[i] )  
                               * fract( colorRepeat[i] * t + colorPhase[i] ) 
                               - colorReflect[i] 
                             )
                        )
                        + colorPerturb[i] * (colorPixel - bestNearest);
        }
    }
    
    gl_FragColor = v_vColour * result;
}
