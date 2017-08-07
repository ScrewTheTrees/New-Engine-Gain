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
    case MSG_ENTITY_CREATE:
         Network_MessageReciveEntityCreate();
         break;
    case MSG_ENTITY_MOVEMENT:
         Network_MessageReciveEntityMovement();
         break;
         
         
         
         
         
    default:
    
            break;
    }
clearbuffer(0);


