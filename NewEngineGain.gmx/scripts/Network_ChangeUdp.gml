///Network_ChangeUdp(NetworkObject, Port)
closesocket(argument0.udpListen);
argument0.udpListen = udpconnect(argument1,2);
argument0.udpPort = argument1;
