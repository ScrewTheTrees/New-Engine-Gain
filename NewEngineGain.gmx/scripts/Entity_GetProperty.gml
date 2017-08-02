///Entity_GetProperty(Entity, Enum ENTITYPROPERTY)
//Returns -1 on failure

var eobj = argument0;

switch (argument1)
{
   case ENTITYPROPERTY.propertyTeam:
        return eobj.team;
        break;

   case ENTITYPROPERTY.propertyHealth:
        return eobj.entityHealth;
        break;
        case ENTITYPROPERTY.propertyStamina:
        return eobj.entityStamina;
        break;
   case ENTITYPROPERTY.propertyMana:
        return eobj.entityMana;
        break;

   case ENTITYPROPERTY.propertyHealthMax:
        return eobj.entityHealthMax;
        break;
   case ENTITYPROPERTY.propertyManaMax:
        return eobj.entityManaMax;
        break;
   case ENTITYPROPERTY.propertyStaminaMax:
        return eobj.entityStaminaMax;
        break;

   case ENTITYPROPERTY.propertyHealthRegen:
        return eobj.entityHealthRegen;
        break;
   case ENTITYPROPERTY.propertyManaRegen:
        return eobj.entityManaRegen;
        break;
   case ENTITYPROPERTY.propertyStaminaRegen:
        return eobj.entityStaminaRegen;
        break;

   case ENTITYPROPERTY.propertyDamageScaling:
        return eobj.damageScaling;
        break;
   case ENTITYPROPERTY.propertyAbilityScaling:
        return eobj.abilityScaling;
        break;
}

return -1;
