///Entity_InputIntUnpack(Entity, inputInt)

global.temp = argument1;

with (argument0)
{
var bit = 1;
    for (var i = 0; i <= 31; i++)
    {
        if (bit & global.temp > 0)
            inputHold[i]=true;
        
        bit = bit * 2;
    }
}

return (global.temp);

