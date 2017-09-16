///Network_MessageSendEntityMovement(Entity)
with (argument0)
{
    writeint(MSG_ENTITY_MOVEMENT,0);
    writeint(Network_GetSelfPlayerID(),0);
    writeint(entityID,0);
    writedouble(x,0);
    writedouble(y,0);
    writefloat(xSpeed,0);
    writefloat(ySpeed,0);
    writefloat(yGravity,0);
    writebyte(facedir,0);
    writeint(Entity_InputIntBuild(self),0);
    
    if (!Network_IsHost() && Network_IsOnline())
       Network_SendServer(true);
    else if (Network_IsHost() && Network_IsOnline())
       Network_SendClient(0,0,true);
       
    clearbuffer(0);
}
