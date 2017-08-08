
   var playerID = readint(0);
   
   clearbuffer(0);
   
   
   if (!Network_IsHost())
   {
        Network.playerID = playerID;
        Network_MessageSendPort(Network.udpPort);
        
        
    with (EntityPlayerControlled)
    {
        writeint(MSG_ENTITY_CREATE,0);
        writeint(Network_GetSelfPlayerID(),0);
        writeint(entityID,0);
        writeint(room,0);
        writebyte(persistent,0);
        writeint(EntityPlayer,0);
        writedouble(x,0);
        writedouble(y,0);
        
        if (!Network_IsHost() && Network_IsOnline())
           Network_SendServer(false);
           
        clearbuffer(0);
    }
   }
