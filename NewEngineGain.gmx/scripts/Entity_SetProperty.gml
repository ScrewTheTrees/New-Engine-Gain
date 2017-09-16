///Entity_SetProperty(Entity, Enum ENTITYSTATE, Value)
//Returns nothing

var eobj = argument0;
var value = argument2;


eobj.state[argument1] = value;

return eobj.state[argument1];
