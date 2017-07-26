///Network_MessageSendPort(Port)
    writeint(MSG_SENDPORT,0);
    writeint(Network_GetSelfPlayerID(),0);
    writeint(argument0,0);
    
    if (!Network_IsHost() && Network_IsOnline())
       Network_SendServer(false);
       
    clearbuffer(0);
