// Apply friction until we are stopped
scrPlayerApplyFriction();

// If there is horizontal input from the player we transition into running
if (InputManager.horizontalInput != 0)
{
	actionState = Action.running;
	exit; // Break from this script
}

if (vertState == VertState.grounded)
{
	if (prevVState == VertState.inAir)													// If we were previously in the air then..
	{
		scrSetSprite(sPlayerBodyLanding, .2, 0);									// -> we transition sprite to landing
	}
	else
	{
		if ((sprite_index == sPlayerBodyLanding && image_index > image_number - 1.1) || // If our sprite is landing and the animation is complete
			(prevAState == Action.meleeAttack))											// or if our previous state was attacking 
		{
			scrSetSprite(sPlayerBodyIdle, 1, 0);									// -> then we transition to the idle sprite
		}
		else if (sprite_index == sPlayerBodyRun)										// If our sprite is currently running then we..
		{
			image_speed = (abs(xSpeed) / maxRunSpeed);									// -> keep our image speed to match the x move speed
			if (xSpeed == 0)														    // -> until our speed reaches zero
				scrSetSprite(sPlayerBodyIdle, 1, 0);								// -> -> Then we can set our sprite to idle
		}
		else if (sprite_index == sPlayerBodyBurst && image_index > image_number - 1.1)
		{
			scrSetSprite(sPlayerBodyIdle, 1, 0);
		}
	}
}

if (InputManager.rollInput && vertState == VertState.grounded)
{
	actionState = Action.dodge;
	scrSetSprite(sPlayerBodyDodging, 10, 0);
	xSpeed = dir * rollSpeed;
}
else if (InputManager.meleeButtonPressed)												// Transition to attack state
{
	actionState = Action.meleeAttack;
	xSpeed = 0;
}