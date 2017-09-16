///Entity_ExecuteAnimation(ComponentAnimation, Sprite, Speed, Repeat, AnimationEndSprite, AnimationEndSpeed)
//AnimationEndSprite will automatically be repeating.
//If repeat is true that last 2 arguments are pretty irrelevant.

var spr, spd, rep, eobj;
eobj = argument0;
spr = argument1;
spd = argument2;
rep = argument3;
endspr = argument4;
endspd = argument5;

eobj.animationFrame = 0;
eobj.animationSprite = spr;
eobj.animationSpeed = spd;
eobj.animationRepeat = rep;

eobj.animationEndSprite = endspr;
eobj.animationEndSpeed = endspd;

animationLength = sprite_get_number(spr);

