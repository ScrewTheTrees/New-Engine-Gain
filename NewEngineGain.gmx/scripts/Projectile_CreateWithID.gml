///Projectile_CreateSync(Object, X, Y, CreatorEntityID, Team, Direction)
var i, ceid;
ceid = argument3;

i = instance_create(argument1,argument2,argument0);
i.creatorID = ceid;
i.creatorEntity = Entity_GetByID(ceid);
i.team = argument4;
i.projectileDirection = argument5;


return i;
