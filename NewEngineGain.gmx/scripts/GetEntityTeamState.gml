///GetTeamState(Entity, Enum TEAM.team)
//This script takes and entity and returns the team state of that team.
var eobj = argument0;
var cteam = argument1;

if (eobj.state[ENTITYSTATE.stateTeam] & cteam > 0)
    return true;
else return false;
