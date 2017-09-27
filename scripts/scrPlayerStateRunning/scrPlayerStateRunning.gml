input = InputManager.horizontalInput;
dir = sign(xSpeed);

// If no left or right input detected we either need to apply friction OR
// if we have stopped all the way change our state. If there is input then we need
// to apply force horizontally
if (input == 0)
{
	actionState = Action.idle;
}
else
{
	if (abs(xSpeed) <= maxRunSpeed)
		xSpeed += accel * input;
	if (abs(xSpeed) > maxRunSpeed) { xSpeed = maxRunSpeed * dir; }  // Prevent jitter from xSpeed being increased
}

// At this point we are on the ground and moving horizontally from user input, use running sprite
if (vertState == VertState.grounded)
	scrPlayerSetSprite(sPlayerBodyRun, (abs(xSpeed) / maxRunSpeed), 0);
	
if (InputManager.rollInput && vertState == VertState.grounded)
{
	actionState = Action.dodge;
	scrPlayerSetSprite(sPlayerBodyDodging, 10, 0);
	xSpeed = dir * rollSpeed + (xSpeed / 2);
}	
else if (InputManager.meleeButtonPressed && (abs(xSpeed) > maxRunSpeed / 2 || InputManager.maxHorizontalAxis))	// Transition to attack state
{
	actionState   = Action.slideAttack;
	scrPlayerSetSprite(sPlayerBodyBurst, 15, 0);
	slidingAttack = true;
	alarm[1]      = slideAttackDuration;
	xSpeed = 0;
}
