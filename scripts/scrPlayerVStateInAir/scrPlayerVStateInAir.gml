if (ySpeed < maxFallSpeed)
{
	ySpeed += grav;
	scrPlayerSetSprite(sPlayerBodyAirborne, 0, 0); // Sub-Image 0, no anim speed
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


if (ySpeed < 0)									  // If traveling upwards
{
	scrPlayerSetSprite(sPlayerBodyAirborne, 0, 0, true); // Sub-Image 0, no anim speed
	if (!InputManager.jumpKeyDown && ySpeed > (-jumpPower / 1.2))
		ySpeed /= 2;
}
else				// If traveling downwards
{
	scrPlayerSetSprite(sPlayerBodyAirborne, 0, 1, true); // Sub-Image 1, no anim speed
}
