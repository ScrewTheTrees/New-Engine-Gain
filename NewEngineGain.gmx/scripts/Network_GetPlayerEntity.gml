///Network_GetPlayerEntity(PlayerID)
global.temp = NetworkClient;
global.temp2 = argument0;

with (NetworkClient)
{
    if (global.temp2 == playerID)
    {
        global.temp = self;
    }
}

return global.temp;
