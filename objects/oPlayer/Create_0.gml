/// @description Initialize Player
maxRunSpeed  = 1.6;
maxFallSpeed = 6.5;
rollSpeed    = 4;

dir    = 1;
xSpeed = 0;
ySpeed = 0;
frict  = .09;
accel  = maxRunSpeed / 6;
grav   = .3;
jumpHeight = 4.5;   // Jump power in how tall in blocks you want
jumpPower = sqrt(2 * (jumpHeight * 16) * grav) - 1;

vertState = VertState.inAir;
actionState = Action.idle;
prevVState = vertState;
prevAState = actionState;

var i = instance_create_layer(x, y, "lay_controllers", oCamera);
i.follow = self;

// ----------------------------------------------------------------
// Combat
// ----------------------------------------------------------------

meleeComboCount = 0;
queueNextMelee  = false;
slideAttack     = false;

// Timers
meleeComboDelay = 15;
meleeComboEnable = true;
slideAttackDuration = room_speed * .5;

hp = 100; // TODO Move assignment to player stat object