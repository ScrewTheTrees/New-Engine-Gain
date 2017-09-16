enum SIZE {
    sizeNormal = 0,
    sizeSmall = 1,
    sizeLarge = 2,
    sizeEnormous = 3
}


/*Size dictates how certain abilities and such interact with the unit.

Ie a large sized creature might ignore some displacement abilities or reduce their effect
Enormous creatures "should" ignore all displacement.
Small creatures might just be torn to pieces by certain abilities.
Normal creatures should react normally to displacement.
