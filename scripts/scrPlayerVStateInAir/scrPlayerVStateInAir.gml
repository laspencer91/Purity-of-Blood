if (ySpeed < maxFallSpeed)
{
	ySpeed += grav;
}


// Check for vertical collisions
if (place_meeting(x, y + ySpeed, oCollisionParent))
{
	while (!place_meeting(x, y + sign(ySpeed), oCollisionParent)) 
	{
		y += sign(ySpeed);
	}
	if (ySpeed > 0)								  // If ground is under us
	{
		vertState = VertState.grounded;			  // -> transition to being rounded
	}
	ySpeed = 0;
}

if (actionState != Action.meleeAttack && actionState != Action.slideAttack)
{
	if (ySpeed < 0)									         // If traveling upwards
	{
		scrSetSprite(sPlayerBodyAirborne, 0, 0, true); // Sub-Image 0, no anim speed
		if (!InputManager.jumpKeyDown && ySpeed > (-jumpPower / 1.2))
			ySpeed /= 2;
	}
	else											         // If traveling downwards
	{
		scrSetSprite(sPlayerBodyAirborne, 0, 1, true); // Sub-Image 1, no anim speed
	}
}
