/// @description Initialize Player
maxRunSpeed  = 15;
maxFallSpeed = 50;

dir = 1;
xSpeed = 0;
ySpeed = 0;
frict  = .7;
accel  = maxRunSpeed / 6;
grav   = 1.5;
jumpHeight = 3.5;   // Jump power in how tall in blocks you want
jumpPower = sqrt(2 * (jumpHeight * 128) * grav) - 1;


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

// Timers
meleeComboDelay = 15;
meleeComboEnable = true;