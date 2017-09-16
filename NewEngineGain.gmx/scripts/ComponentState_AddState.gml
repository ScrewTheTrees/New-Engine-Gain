///ComponentState_AddState(ComponentState, Enum COMPONENT_STATE, Value)
//Returns nothing

var eobj = argument0;
var value = argument2;

var property = ComponentState_GetState(eobj,argument1);

property += value;

ComponentState_SetState(eobj,argument1,property);

