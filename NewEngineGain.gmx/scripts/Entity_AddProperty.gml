///Entity_AddProperty(Entity, Enum ENTITYPROPERTY, Value)
//Returns nothing

var eobj = argument0;
var value = argument2;

var property = Entity_GetProperty(eobj,argument1);

property += value;

Entity_SetProperty(eobj,argument1,property);

