
   var playerID = readint(0);
   
   clearbuffer(0);
   
   
   if (Network_IsHost())
   {
        writeint(MSG_DEADPACKET,0);
        writeint(0,0);
        
        Network_SendClient(1,playerID, true);
        clearbuffer(0);
   }
