///Entity_StepMovementPlatformer(SELF)


var up, down, left, right, jump;

up = inputHold[INPUT.keyUp];
down = inputHold[INPUT.keyDown];
left = inputHold[INPUT.keyLeft];
right = inputHold[INPUT.keyRight];

jump = inputPressed[INPUT.keyJump];
jumpHold = inputHold[INPUT.keyJump];

//Handle xSpeed, ySpeed and gravity
if (!place_meeting(x,y+ySpeed,Solid))
{
    ySpeed += yGravity;
}
if (place_meeting(x,y+ySpeed,Solid))
{
    if ySpeed >= 0
    {
        for(var i = 0; i<=abs(ySpeed); i+=1)
        {
            if !place_meeting(x,y+1,Solid)
                y+=1;
            else
            {
                ySpeed=0;
                xSpeed=0;
                i=9999; //Exit
            }
        }
    }
    else if ySpeed < 0
    {
        for(var i = 0; i<=abs(ySpeed); i+=1)
        {
            if !place_meeting(x,y-1,Solid)
                y-=1;
            else
            {
                ySpeed=0;
                i=9999; //Exit
            }
            
        }
    }
}
else y+=ySpeed;


if (!place_meeting(x+xSpeed,y,Solid))
{
    x+=xSpeed;
}
else if xSpeed > 0
    for(var i = 0; i<=abs(xSpeed); i+=1)
    {
        if !place_meeting(x+1,y,Solid)
            x+=1;
        else
        {
            i=9999; //Exit   
            xSpeed = 0; 
        }
    }
else if xSpeed < 0
    for(var i = 0; i<=abs(xSpeed); i+=1)
    {
        if !place_meeting(x-1,y,Solid)
            x-=1;
        else
        {
            i=9999; //Exit   
            xSpeed = 0; 
        }
    }

//Handle movement
if (right==1) facedir=1;
if (left==1) facedir=-1;

var moveSpeedRun=0;


if (right==true || left==true) //If move left/right defined, move
    moveSpeedRun=moveSpeed*facedir;

if (right==true && left==true) //do not move if both keys are pressed at the same time
    moveSpeedRun=0;
  
  
  //TODO: make platformer code
    

var moving=0;
var gg=true;

//Move in X direction depending on key layout
if (moveSpeedRun!=0)
{
gg=false;

if (place_meeting(x,y+1,Solid)==true)  
    for(i=abs(moveSpeedRun)+1; i>=-abs(moveSpeedRun+1); i-=1)
    {
    
    //If the position above the relative I position is free, whilst the position i+2 underneath is occupied
    if !place_meeting(x+moveSpeedRun,y+i,Solid)
    && place_meeting(x+moveSpeedRun,y+i+1,Solid)
       { 
       y+=i; 
       x+=moveSpeedRun; 
       gg=true; 
       //facedir=-1
       i=-10000; //Stop calculation
       
       
       moving=1;
       }
       
     }//For

     //We did not move according to slope movement

if xSpeed=0 //Can only control if you are not walljumping/getting launched
and gg = false  //We havent moved yet
    {
    if !place_meeting(x+moveSpeedRun,y,Solid) {x+=moveSpeedRun }   //Full movement speed ahread!
    else if !place_meeting(x+facedir,y,Solid) {x+=facedir};         //A small step against the wall to make better interpolation
    }//if movespeed
}//Hspeed


//Holding up makes you jump higher and fall slower... moar floaty
if (!place_meeting(x,y+1,Solid) && !place_meeting(x,y-abs(ySpeed),Solid) && jumpHold == true && ySpeed<0 && canJump == true)
   {
   ySpeed -= yGravity*0.5;
   }

if (jump == true) && place_meeting(x,y+1,Solid)
   {
   ySpeed = -jumpSpeed;
   }

else if (jump == true && !place_meeting(x,y-1,Solid) && place_meeting(x-moveSpeed,y,Solid) && canWallJump == true)
     {
     xSpeed=jumpSpeedWall;
     ySpeed=-jumpSpeedWallUp;
     }
else if (jump == true && !place_meeting(x,y-1,Solid) && place_meeting(x+moveSpeed,y,Solid) && canWallJump == true)
     {
     xSpeed=-jumpSpeedWall;
     ySpeed=-jumpSpeedWallUp;
     }
