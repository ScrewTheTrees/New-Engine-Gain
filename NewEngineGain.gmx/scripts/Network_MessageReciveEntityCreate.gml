
    var pid = readint(0);
   var eid = readint(0);
   var oid = readint(0);
   var xx = readdouble(0);
   var yy = readdouble(0);
   
   if (Network_IsHost())
   {
        Network_SendClient(2,pid,true);
   }
   
   Entity_CreateDefinedID(oid,xx,yy,eid);
   
   clearbuffer(0);
