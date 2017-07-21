///Network_SendClient( All[0] Defined[1] AllButDefined[2], extraID , UseUdp)
/*
0=All
1=Defined
2=All players except the one defined (Others generally)
*/

if instance_exists(NetworkClient)
{
    switch(argument0)
    {
        case 0:
            with(NetworkClient)
                {
                if argument2=false sendmessage(playerSocket,0,0,0);
                else sendmessage(Network.udpListen,playerIP,playerPort,0);
                }
        break;
        case 1:
            with (NetworkClient)
                {
                if (playerID==argument1)
                    {
                    if argument2=false sendmessage(playerSocket,0,0,0);
                    else sendmessage(Network.udpListen,playerIP,playerPort,0);
                    }
                }
        break;
        case 2:
            with (NetworkClient)
                {
                if (playerID!=argument1)
                    {
                    if argument2=false sendmessage(playerSocket,0,0,0);
                    else sendmessage(Network.udpListen,playerIP,playerPort,0);
                    }
                }
        break;
    
    }//Switch
}
