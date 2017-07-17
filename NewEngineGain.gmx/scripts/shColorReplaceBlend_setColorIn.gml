///shColorReplaceBlend_setColorIn(color RGB, alpha 0-1)
//
//  shader_set_uniform_color(color,alpha)
//      color   standard GM color value
//      alpha   given in [0,1] range
{
    var shaderIn = shader_get_uniform(shColorReplaceBlend,"colorIn")
    shader_set_uniform_f(shaderIn,color_get_red(argument0)/255,color_get_green(argument0)/255,color_get_blue(argument0)/255,argument1);
}
