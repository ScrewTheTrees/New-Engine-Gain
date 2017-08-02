///Entity_SetSprite(Sprite, Speed, Repeat, AnimationEndSprite)
var spr, spd, rep;
spr = argument0;
spd = argument1;
rep = argument2;
endspr = argument3;

animationFrame = 0;
animationSprite = spr;
animationSpeed = spd;
animationRepeat = rep;
animationEndSprite = endspr;

animationLength = sprite_get_number(spr);


