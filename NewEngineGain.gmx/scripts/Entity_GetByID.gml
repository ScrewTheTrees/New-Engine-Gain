///Entity_GetByID(entityID)

global.eid = argument0;

global.temp = EntityDummy;

with (Entity)
{
    if entityID == global.eid
        global.temp = self;
}


return global.temp;
