/// @description Initialize Player
maxRunSpeed  = 7.5;
maxFallSpeed = 30;

dir = 1;
xSpeed = 0;
ySpeed = 0;
frict  = .35;
accel  = maxRunSpeed / 6;
grav   = 1.5;
jumpHeight = 3.8;   // Jump power in how tall in blocks you want
jumpPower = sqrt(2 * (jumpHeight * 64) * grav) - 1;

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
slideAttackSpeed = 19;

// Timers
meleeComboDelay = 15;
meleeComboEnable = true;
slideAttackDuration = room_speed * .77;