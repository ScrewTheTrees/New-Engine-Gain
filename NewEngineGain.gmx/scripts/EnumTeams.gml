enum TEAM {
     teamNeutral = 0,
     teamPlayer = 1,
     teamEnemy = 2,
     teamAlly = 3
};

/*
"Creator" is the Entity which created the projectile.
There are booleans inside the projectiles that modifies these rules.

(PROJECTILES)
    Neutrals dont to anything
    Player can damage Enemy and heal Creator
    Enemy can damage Player and will collide with Ally (Without damage)
    Ally can collide with enemies (Without damage) and Heal Player


