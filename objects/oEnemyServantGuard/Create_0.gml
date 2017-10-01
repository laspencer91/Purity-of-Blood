/// @description Init Enemy Guard

actionState   = State.idle;
idleTime      = 180;
walkingTime   = 180;

reactionDelay = 60;
startAttackDelay = 20;
stateStartDelay   = 0;

facingDir     = 1;
sightDist	  = 100;
fov           = 45;

xSpeed		  = 0;
ySpeed	      = 0;

walkSpeed     = 1;
engageSpeed   = 0.6;

lastSeenPositionX = 0;
lastSeenPositionY = 0;
lostTargetTimer = 0;
aiVariance = irandom(20);

ySpeed = 0;
maxFallSpeed = 6.5;
grav = .3;

// Flash For Damage
flash = 0;
hp = 100;