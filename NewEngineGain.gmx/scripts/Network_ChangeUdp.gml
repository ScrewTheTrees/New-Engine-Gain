///Network_ChangeUdp(Port)
if (!Network_IsHost())
{
    closesocket(Network.udpListen);
    Network.udpListen = udpconnect(argument0,2);
    Network.udpPort = argument0;
}
