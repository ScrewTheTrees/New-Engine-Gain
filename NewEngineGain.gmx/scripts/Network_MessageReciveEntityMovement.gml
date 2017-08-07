
global.temp = readint(0);

with (Entity_GetByID(readint(0)))
{
   x = readdouble(0);
   y = readdouble(0);
   xSpeed = readfloat(0);
   ySpeed = readfloat(0);
   yGravity = readfloat(0);
   facedir = readbyte(0)
   Entity_InputIntUnpack(self,readint(0));
   
   if (Network_IsHost())
   {
        Network_SendClient(2,global.temp,true);
   }
   
   clearbuffer(0);
}
