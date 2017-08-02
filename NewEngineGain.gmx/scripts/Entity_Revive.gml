///Entity_Revive(Entity, healthFactor, manaFactor)

var eobj, percentHealth, percentMana;

eobj = argument0;
percentHealth = argument1;
percentMana = argument2;

eobj.dead = false;

eobj.entityHealth = entityHealthMax * percentHealth;
eobj.entityMana = entityManaMax * percentMana;

