///Entity_UnpackInputInt(Entity, inputInt)

global.temp = argument1;

with (argument0)
{
var bit = 1;
    for (var i = 0; i <= 31; i++)
    {
        if (bit & global.temp)
            inputHold[i]=true;
        
        bit = bit * 2;
    }
}

return (global.temp);

