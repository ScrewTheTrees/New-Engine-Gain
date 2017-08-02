///Entity_StepMovementPlatformer(SELF)


var up, down, left, right, jump;

up = inputHold[INPUT.keyUp];
down = inputHold[INPUT.keyDown];
left = inputHold[INPUT.keyLeft];
right = inputHold[INPUT.keyRight];

jump = inputPressed[INPUT.keyUp];

//Handle xSpeed, ySpeed and gravity
if (!place_meeting(x,y+ySpeed,Solid))
{
    ySpeed += yGravity;
}
if (place_meeting(x,y+ySpeed,Solid))
    for(var i = 0; i<=ySpeed; i+=0.5)
    {
        if !place_meeting(x,y+0.5,Solid)
            y+=0.5;
        else i=9999; //Exit
        
        ySpeed=0;
        xSpeed=0;
    }
else y+=ySpeed;


if (!place_meeting(x+xSpeed,y,Solid))
{
    x+=xSpeed;
}
else for(var i = 0; i<=xSpeed; i+=0.5)
{
    if !place_meeting(x+0.5,y,Solid)
        x+=0.5;
    else i=9999; //Exit    
}

//Handle movement
if (right==1) facedir=1;
if (left==1) facedir=-1;

var moveSpeedRun=0;


if (right==true || left==true) //If move left/right defined, move
    moveSpeedRun=movespeed*facedir;

if (right==true && left==true) //do not move if both keys are pressed at the same time
    moveSpeedRun=0;
  
  
  //TODO: make platformer code
    
/*
moving=0;
gg=true;

//Move in X direction depending on key layout
if (moveSpeedRun!=0)
{
gg=false;

if (place_meeting(x,y+4,Solid)==true)  
    for(i=moveScanHeight; i>=-moveScanHeight; i-=moveScanIntervall)
    {
    
    //If the position above the relative I position is free, whilst the position i+2 underneath is occupied
    if !place_meeting(x+moveSpeedRun,y+i,Solid)
    && place_meeting(x+moveSpeedRun,y+i+moveScanIntervall,Solid)
       { 
       y+=i; 
       x+=moveSpeedRun; 
       gg=true; 
       //facedir=-1
       vspeed=0;
       hspeed=0;
       gravity=0;
       i=-10000; //Stop calculation
       
       moving=1;
       }
       
     }//For

     //We did not move according to slope movement

if hspeed=0 //Can only control if you are not walljumping/getting launched
    {
    if gg=false && !place_meeting(x+moveSpeedRun,y,Solid) {x+=moveSpeedRun }   //Full movement speed ahread!
    else if gg=false && !place_meeting(x+facedir,y,Solid) {x+=facedir};         //A small step against the wall to make better interpolation
    }//if movespeed
}//Hspeed





//Holding up makes you jump higher and fall slower... moar floaty
if (!place_meeting(x,y+4,Solid) && !place_meeting(x,y-8,Solid) && pressJump == true)
   {
   vspeed -= gravity*0.5;
   }

if (pressedJump == true) && place_meeting(x,y+4,Solid)
   {
   vspeed = -jumpSpeed;
   }
else if (pressedJump == true && !place_meeting(x,y-6,Solid) && place_meeting(x-moveSpeed,y,Solid))
     {
     hspeed=jumpSpeedWall;
     vspeed=-jumpSpeedWallUp;
     }
else if (pressedJump == true && !place_meeting(x,y-6,Solid) && place_meeting(x+moveSpeed,y,Solid))
     {
     hspeed=-jumpSpeedWall;
     vspeed=-jumpSpeedWallUp;
     }

    
    
