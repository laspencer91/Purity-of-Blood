
if (abs(xSpeed) != 0) 
{
	xSpeed -= frict * dir;
	if (abs(xSpeed) <= frict) xSpeed = 0;
}

// If there is horizontal input from the player we transition into running
if (InputManager.horizontalInput != 0)
{
	actionState = Action.running;
}

if (vertState == VertState.grounded)
{
	if (prevVState == VertState.inAir)
	{
		scrPlayerSetSprite(sPlayerBodyLanding, .5, 0);
	}
	else
	{
		if (sprite_index == sPlayerBodyLanding && image_index > image_number - 1.1 || prevAState != Action.idle)
			scrPlayerSetSprite(sPlayerBodyIdle, 1, 0);
	}
}