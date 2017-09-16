///Network_MessageSendPlayerID(PlayerID)
    writeint(MSG_SENDPLAYERID,0);
    writeint(argument0,0);
    writeint(Entity_CreateEntityID(),0);
    
    if (Network_IsHost())
       Network_SendClient(1,argument0,false);
       
    clearbuffer(0);
