enum INPUT {
     keyUp = 0,
     keyDown = 1,
     keyLeft = 2,
     keyRight = 3,
     keyJump = 4,
     keyAttackBasic = 32,
     keyAttackHeavy = 33,
     keyAttackArt = 34,
     keyMax = 34
}
/*
keyMax should always be above 31.
Note that any InputKeys above 31 wont be synced to other players, good for weapons.



