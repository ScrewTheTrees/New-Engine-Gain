///Entity_GetFlagState(Entity, Enum ENTITYFLAG.flag)
//This script takes and entity and returns the flag states.
var eobj = argument0;
var cflag = argument1;

if (eobj.flags & cflag > 0)
    return true;
else return false;
