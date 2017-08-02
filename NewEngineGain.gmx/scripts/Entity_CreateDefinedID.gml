///Entity_CreateDefinedID(Object, X, Y, Team, EntityID)
//Primarily used by clients so that the spawned entities get the right ID.
var i;

i = Entity_Create(argument0,argument1,argument2,argument3);
i.entityID = argument4;

return i;
