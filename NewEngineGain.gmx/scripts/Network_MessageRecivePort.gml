
   var playerID = readint(0);
   var port = readint(0);
   
   clearbuffer(0);
   
   
   if (Network_IsHost())
   {
        var player = Network_GetPlayerEntity(playerID);
        player.playerPort = port;
   }
