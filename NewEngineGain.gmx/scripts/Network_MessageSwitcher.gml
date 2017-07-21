///Network_MessageSwitcher()

var messageid = readint(0);

    switch(messageid)
    {
    case MSG_DEADPACKET:
         Network_MessageReciveDeadpacket();
         break;
    case MSG_SENDPLAYERID:
         Network_MessageRecivePlayerID();
         break;
    case MSG_SENDPORT:
         Network_MessageRecivePort();
         break;
    default:
    
            break;
    }
clearbuffer(0);


