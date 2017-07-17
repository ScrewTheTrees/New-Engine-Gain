///shColorReplaceRangeExt_SetColors(arrayInputRed, arrayInputGreen, arrayInputBlue, arrayOutputRed, arrayOutputGreen, arrayOutputBlue, amountOfColors)
//Use RGB with no alpha.
var arrayInputRed = argument0;
var arrayInputGreen = argument1;
var arrayInputBlue = argument2;
var arrayOutputRed = argument3;
var arrayOutputGreen = argument4;
var arrayOutputBlue = argument5;
var amountOfColors = argument6;


for (var i=0; i < amountOfColors; i++)
{
    var hnd_colorIn = shader_get_uniform(shColorReplaceRangeExt, "colorIn"+string(i));
    var hnd_colorOut = shader_get_uniform(shColorReplaceRangeExt, "colorOut"+string(i));
    
    var colorIn;
    
    colorIn[0] = arrayInputRed/255;
    colorIn[1] = arrayInputGreen/255;
    colorIn[2] = arrayInputBlue/255;
    colorIn[3] = 1;
    
    colorOut[0] = arrayOutputRed/255;
    colorOut[1] = arrayOutputGreen/255;
    colorOut[2] = arrayOutputBlue/255;
    colorOut[3] = 1;

    
}
