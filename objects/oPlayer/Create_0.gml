/// @description Initialize Player
dir = 1;
xSpeed = 0;
ySpeed = 0;
frict  = 2;
accel  = 1;
grav   = 1;
jumpHeight = 3.5;   // Jump power in how tall in blocks you want
jumpPower = sqrt(2 * (jumpHeight * 128) * grav) - 1;

maxRunSpeed  = 15;
maxFallSpeed = 40;

vertState = VertState.inAir;
actionState = Action.idle;

var i = instance_create_layer(x, y, "lay_controllers", oCamera);
i.follow = self;