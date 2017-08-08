///Projectile_GetCollisionAllegiance(Projectile, Entity)
//0 = No collision, 1 = Enemy, 2 = Ally, 3 = collide but no effect
proj = argument0;
ent = argument1;

if (GetTeamState(proj,TEAM.teamPlayer)==true)
{
    if GetTeamState(ent,TEAM.teamEnemy)
        return 1;
    if GetTeamState(ent,TEAM.teamBoss)
        return 1;
    if GetTeamState(ent,TEAM.teamPlayer)
        return 2;
    if GetTeamState(ent,TEAM.teamAlly)
        return 2;
}

if (GetTeamState(proj,TEAM.teamAlly)==true)
{
    if GetTeamState(ent,TEAM.teamEnemy)
        return 1;
    if GetTeamState(ent,TEAM.teamBoss)
        return 1;
    if GetTeamState(ent,TEAM.teamPlayer)
        return 2;
    if GetTeamState(ent,TEAM.teamAlly)
        return 3;
}

if (GetTeamState(proj,TEAM.teamEnemy)==true)
{
    if GetTeamState(ent,TEAM.teamEnemy)
        return 2;
    if GetTeamState(ent,TEAM.teamBoss)
        return 2;
    if GetTeamState(ent,TEAM.teamAlly)
        return 3;
    if GetTeamState(ent,TEAM.teamPlayer)
        return 1;
}

if (GetTeamState(proj,TEAM.teamBoss)==true)
{
    if GetTeamState(ent,TEAM.teamEnemy)
        return 1;
    if GetTeamState(ent,TEAM.teamBoss)
        return 2;
    if GetTeamState(ent,TEAM.teamAlly)
        return 3;
    if GetTeamState(ent,TEAM.teamPlayer)
        return 1;
}

return 0;
