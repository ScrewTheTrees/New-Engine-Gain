
   var playerID = readint(0);
   
   clearbuffer(0);
   
   
   if (!Network_IsHost())
   {
        Network.playerID = playerID;
        Network_MessageSendPort(Network.udpPort);
   }
