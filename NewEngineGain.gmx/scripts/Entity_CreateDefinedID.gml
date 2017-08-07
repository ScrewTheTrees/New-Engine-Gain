///Entity_CreateDefinedID(Object, X, Y, EntityID)
//Primarily used by clients so that the spawned entities get the right ID.
var i;

i = instance_create(argument0,argument1,argument2);
i.entityID = argument3;

return i;
