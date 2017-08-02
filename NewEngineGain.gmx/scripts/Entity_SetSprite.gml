///Entity_SetSprite(Sprite, Speed, Repeat, AnimationEndSprite, AnimationEndSpeed)
//AnimationEndSprite will automatically be repeating.
//If repeat is false that last 2 arguments are pretty irrelevant.

var spr, spd, rep;
spr = argument0;
spd = argument1;
rep = argument2;
endspr = argument3;
endspd = argument3;

animationFrame = 0;
animationSprite = spr;
animationSpeed = spd;
animationRepeat = rep;

animationEndSprite = endspr;
animationEndSpeed = endspd;

animationLength = sprite_get_number(spr);

