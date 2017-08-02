///Projectile_Create(Object, X, Y, CreatorObject)
var i, cobj;
cobj = argument3;

i = instance_create(argument1,argument2,argument0);
i.creatorID = cobj.entityID;
i.creatorEntity = cobj;
