///Entity_BuildInputInt(Entity)

global.temp = 0;

with (argument0)
{
var bit = 1;
    for (var i = 0; i <= 31; i++)
    {
        if (inputHold[i]==true)
            global.temp += bit;
        
        bit = bit * 2;
    }
}

return (global.temp);

