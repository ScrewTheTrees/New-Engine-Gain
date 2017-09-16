///Entity_SetProperty(Entity, Enum ENTITYPROPERTY, Value)
//Returns nothing

var eobj = argument0;
var value = argument2;

switch (argument1)
{
    case ENTITYPROPERTY.propertyTeam:
        eobj.team = value;
        break;

    case ENTITYPROPERTY.propertyHealth:
        eobj.entityHealth = value;
        break;
    case ENTITYPROPERTY.propertyMana:
        eobj.entityMana = value;
        break;
    case ENTITYPROPERTY.propertyStamina:
        eobj.entityStamina = value;
        break;

    case ENTITYPROPERTY.propertyHealthMax:
        eobj.entityHealthMax = value;
        break;
    case ENTITYPROPERTY.propertyManaMax:
        eobj.entityManaMax = value;
        break;
    case ENTITYPROPERTY.propertyStaminaMax:
        eobj.entityStaminaMax = value;
        break;

    case ENTITYPROPERTY.propertyHealthRegen:
        eobj.entityHealthRegen = value;
        break;
    case ENTITYPROPERTY.propertyManaRegen:
        eobj.entityManaRegen = value;
        break;
    case ENTITYPROPERTY.propertyStaminaRegen:
        eobj.entityStaminaRegen = value;
        break;

    case ENTITYPROPERTY.propertyDamageScaling:
        eobj.damageScaling = value;
        break;
    case ENTITYPROPERTY.propertyAbilityScaling:
        eobj.abilityScaling = value;
        break;
}

