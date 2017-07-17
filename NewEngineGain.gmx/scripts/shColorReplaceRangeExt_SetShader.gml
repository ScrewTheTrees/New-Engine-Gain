///shColorReplaceRangeExt_SetShader(arrayInputRed, arrayInputGreen, arrayInputBlue, arrayOutputRed, arrayOutputGreen, arrayOutputBlue, amountOfColors)
//Remeber to run shader_reset() after use.
var arrayInputRed = argument0;
var arrayInputGreen = argument1;
var arrayInputBlue = argument2;
var arrayOutputRed = argument3;
var arrayOutputGreen = argument4;
var arrayOutputBlue = argument5;
var amountOfColors = argument6;

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

var colorIn;
var colorOut;

for (var i=0; i < amountOfColors; i++)
{
    colorPhase[i] = 0;
    colorRepeat[i] = 1.0;    
    colorReflect[i] = 0.0;
    colorTolerance[i] = 1/255;
    colorPerturb[i] = 0.0;
    
    colorIn[0 + (i*4)] = arrayInputRed[i]/255;
    colorIn[1 + (i*4)] = arrayInputGreen[i]/255;
    colorIn[2 + (i*4)] = arrayInputBlue[i]/255;
    colorIn[3 + (i*4)] = 1;
    
    colorOut[0 + (i*4)] = arrayOutputRed[i]/255;
    colorOut[1 + (i*4)] = arrayOutputGreen[i]/255;
    colorOut[2 + (i*4)] = arrayOutputBlue[i]/255;
    colorOut[3 + (i*4)] = 1;
}

shader_set(shColorReplaceRangeExt);

shader_set_uniform_f_array(hnd_colorIn0, colorIn);
shader_set_uniform_f_array(hnd_colorOut0, colorOut);
shader_set_uniform_f_array(hnd_colorIn1, colorIn);
shader_set_uniform_f_array(hnd_colorOut1, colorOut);
shader_set_uniform_f_array(hnd_colorPhase, colorPhase);
shader_set_uniform_f_array(hnd_colorRepeat, colorRepeat);
shader_set_uniform_f_array(hnd_colorReflect, colorReflect);
shader_set_uniform_f_array(hnd_colorTolerance, colorTolerance);
shader_set_uniform_f_array(hnd_colorPerturb, colorPerturb);
shader_set_uniform_f(hnd_colorNum, amountOfColors);
