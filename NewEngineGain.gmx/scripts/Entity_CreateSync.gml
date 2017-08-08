///Entity_CreateSync(Object, X, Y)
//Also sync itself to other players
var i;

i = instance_create(argument1,argument2,argument0);
Network_MessageSendEntityCreate(i);

return i;
