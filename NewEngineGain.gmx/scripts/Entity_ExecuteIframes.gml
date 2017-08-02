///Entity_ExecuteIframes(Entity, iFrames, Additive)
var eobj, frame, isAdd;

eobj = argument0;
frame = argument1;
isAdd = argument2;

if (isAdd == true)
   eobj.iframes += frame;
else eobj.iframes = frame;

eobj.projectileCollide = false;
