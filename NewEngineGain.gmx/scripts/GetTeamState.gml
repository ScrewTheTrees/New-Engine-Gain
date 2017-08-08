///GetTeamState(Entity/Projectile, Enum TEAM.team)
//This script takes and entity and returns the team state of that team.
var eobj = argument0;
var cteam = argument1;

if (eobj.team & cteam > 0)
    return true;
else return false;
