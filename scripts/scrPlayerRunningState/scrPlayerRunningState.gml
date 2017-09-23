input = InputManager.horizontalInput;
dir = sign(xSpeed);

// If no left or right input detected we either need to apply friction OR
// if we have stopped all the way change our state. If there is input then we need
// to apply force horizontally
if (input == 0)
{
	if (abs(xSpeed) > 8) 
	{
		xSpeed -= frict * dir;
		if (abs(xSpeed) <= frict) xSpeed = 0;
	}
	else
	{
		actionState = Action.idle;
	}
}
else
{
	if (abs(xSpeed) < maxRunSpeed)
		xSpeed += accel * input;
}

// At this point we are on the ground and moving horizontally from user input, use running sprite
if (vertState == VertState.grounded)
	scrPlayerSetSprite(sPlayerBodyRun, (abs(xSpeed) / maxRunSpeed), 0);