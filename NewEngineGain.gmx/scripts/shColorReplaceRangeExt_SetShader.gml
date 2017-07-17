///shColorReplaceRangeExt_SetShader(arrayInputUpper, arrayInputlower, arrayOutputUpper, arrayOutputLower, amountOfColors)
//Remeber to run shader_reset() after use.
//The arrays should be RGB colors

var arrayInput1 = argument0;
var arrayInput2 = argument1;

var arrayOutput1 = argument2;
var arrayOutput2 = argument3;

var amountOfColors = argument4;

var hnd_colorNum = shader_get_uniform(shColorReplaceRangeExt, "colorNum");
var hnd_colorPhase = shader_get_uniform(shColorReplaceRangeExt, "colorPhase");
var hnd_colorRepeat = shader_get_uniform(shColorReplaceRangeExt, "colorRepeat");
var hnd_colorReflect = shader_get_uniform(shColorReplaceRangeExt, "colorReflect");
var hnd_colorTolerance = shader_get_uniform(shColorReplaceRangeExt, "colorTolerance");
var hnd_colorPerturb = shader_get_uniform(shColorReplaceRangeExt, "colorPerturb");
var hnd_colorNum = shader_get_uniform(shColorReplaceRangeExt, "colorNum");
var hnd_colorIn0 = shader_get_uniform(shColorReplaceRangeExt, "colorIn0");
var hnd_colorOut0 = shader_get_uniform(shColorReplaceRangeExt, "colorOut0");
var hnd_colorIn1 = shader_get_uniform(shColorReplaceRangeExt, "colorIn1");
var hnd_colorOut1 = shader_get_uniform(shColorReplaceRangeExt, "colorOut1");

var colorIn1;
var colorIn2;
var colorOut1;
var colorOut2;

for (var i=0; i < amountOfColors; i++)
{
    colorPhase[i] = 0;
    colorRepeat[i] = 1.0;    
    colorReflect[i] = 0.0;
    colorTolerance[i] = 1/255;
    colorPerturb[i] = 0.0;
    
    colorIn1[0 + (i*4)] = color_get_red(arrayInput1[i]) / 255;
    colorIn1[1 + (i*4)] = color_get_green(arrayInput1[i]) / 255;
    colorIn1[2 + (i*4)] = color_get_blue(arrayInput1[i]) / 255;
    colorIn1[3 + (i*4)] = 1;
    
    colorIn2[0 + (i*4)] = color_get_red(arrayInput2[i]) / 255;
    colorIn2[1 + (i*4)] = color_get_green(arrayInput2[i]) / 255;
    colorIn2[2 + (i*4)] = color_get_blue(arrayInput2[i]) / 255;
    colorIn2[3 + (i*4)] = 1;
    
    colorOut1[0 + (i*4)] = color_get_red(arrayOutput1[i]) / 255;
    colorOut1[1 + (i*4)] = color_get_green(arrayOutput1[i]) / 255;
    colorOut1[2 + (i*4)] = color_get_blue(arrayOutput1[i]) / 255;
    colorOut1[3 + (i*4)] = 1;
    
    colorOut2[0 + (i*4)] = color_get_red(arrayOutput2[i]) / 255;
    colorOut2[1 + (i*4)] = color_get_green(arrayOutput2[i]) / 255;
    colorOut2[2 + (i*4)] = color_get_blue(arrayOutput2[i]) / 255;
    colorOut2[3 + (i*4)] = 1;
}

shader_set(shColorReplaceRangeExt);

shader_set_uniform_f_array(hnd_colorIn0, colorIn1);
shader_set_uniform_f_array(hnd_colorOut0, colorOut1);
shader_set_uniform_f_array(hnd_colorIn1, colorIn2);
shader_set_uniform_f_array(hnd_colorOut1, colorOut2);
shader_set_uniform_f_array(hnd_colorPhase, colorPhase);
shader_set_uniform_f_array(hnd_colorRepeat, colorRepeat);
shader_set_uniform_f_array(hnd_colorReflect, colorReflect);
shader_set_uniform_f_array(hnd_colorTolerance, colorTolerance);
shader_set_uniform_f_array(hnd_colorPerturb, colorPerturb);
shader_set_uniform_f(hnd_colorNum, amountOfColors);
