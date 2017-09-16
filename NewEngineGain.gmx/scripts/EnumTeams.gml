enum TEAM {
     teamNeutral = 1,
     teamPlayer = 2,
     teamEnemy = 4,
     teamAlly = 8,
     teamBoss = 16
};

/*
"Creator" is the Entity which created the projectile.
There are booleans inside the projectiles that modifies these rules.
These are used for the bitfield "team"

(PROJECTILES)
    Neutrals are just aesthetic
    Player can damage Enemy and heal Creator
    Enemy can damage Player and will collide with Ally (Without damage)
    Ally can collide with enemies (Without damage) and Heal Player


