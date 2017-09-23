if (ySpeed < maxFallSpeed)
{
	ySpeed += grav;
	scrPlayerSetSprite(sPlayerBodyAirborne, 0, 0); // Sub-Image 0, no anim speed
}

if (place_meeting(x, y + ySpeed, oCollisionParent))
{
	while (!place_meeting(x, y + sign(ySpeed), oCollisionParent)) 
	{
		y += sign(ySpeed);
	}
	if (ySpeed > 0)
	{
		vertState = VertState.grounded;
	}
	ySpeed = 0;
}

if (ySpeed < 0)
{
	scrPlayerSetSprite(sPlayerBodyAirborne, 0, 0, true); // Sub-Image 0, no anim speed
	if (!InputManager.jumpKeyDown && ySpeed > (-jumpPower / 1.5))
		ySpeed /= 2;
}
else
{
	scrPlayerSetSprite(sPlayerBodyAirborne, 0, 1, true); // Sub-Image 1, no anim speed
}
