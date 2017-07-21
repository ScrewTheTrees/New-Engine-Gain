///
    writeint(MSG_DEADPACKET,0);
    writeint(Network_GetPlayerID,0);
    
    if (!Network_IsHost() && Network_IsOnline())
       Network_SendServer(true);
       
    clearbuffer(0);
