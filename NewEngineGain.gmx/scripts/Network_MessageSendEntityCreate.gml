///Network_MessageSendEntityCreate(Entity)
with (argument0)
{
    writeint(MSG_ENTITY_CREATE,0);
    writeint(Network_GetSelfPlayerID(),0);
    writeint(entityID,0);
    writeint(room,0);
    writebyte(persistent,0);
    writeint(object_index,0);
    writedouble(x,0);
    writedouble(y,0);
    
    if (!Network_IsHost() && Network_IsOnline())
       Network_SendServer(false);
    else if (Network_IsHost() && Network_IsOnline())
       Network_SendClient(0,0,false);
       
    clearbuffer(0);
}
