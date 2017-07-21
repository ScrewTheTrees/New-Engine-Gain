///Network_MessageSendPlayerID(PlayerID)
    writeint(MSG_SENDPORT,0);
    writeint(argument0,0);
    
    if (Network_IsHost() && Network_IsOnline())
       Network_SendClient(1,argument0,false);
