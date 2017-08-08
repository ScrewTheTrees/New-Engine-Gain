
    var pid = readint(0);
   var eid = readint(0);
   var rm = readint(0);
   var pers = readbyte(0);
   var oid = readint(0);
   var xx = readdouble(0);
   var yy = readdouble(0);
   
   if (Network_IsHost())
   {
        Network_SendClient(2,pid,true);
   }
   
   //If persistent or in the same room, create.
   if (rm == room or pers == true)
   {
        i = Entity_CreateDefinedID(oid,xx,yy,eid);
        i.entityRoom = rm;
   }
   
   clearbuffer(0);
