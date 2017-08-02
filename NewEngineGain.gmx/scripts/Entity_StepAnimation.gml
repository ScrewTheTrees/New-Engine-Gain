///Entity_StepAnimation(SELF)
animationFrame += animationSpeed;

if animationFrame >= animationLength
{
    if (animationRepeat = true)
        animationFrame -= animationLength;
    else if animationSprite >= 0
    {
        animationFrame = 0;
        animationSprite = animationEndSprite;
        animationSpeed = animationEndSpeed;
        animationRepeat = true;
    }
    else 
    {
        animationFrame = 0;
        animationSprite = animationIdle;
        animationSpeed = 1;
        animationRepeat = true;
    }
}

