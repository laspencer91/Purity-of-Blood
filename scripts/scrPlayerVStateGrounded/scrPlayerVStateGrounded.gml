ySpeed = 0;

if (InputManager.jumpKeyPressed && !InputManager.rollInput)
{
	if (actionState != Action.meleeAttack)
	{
		ySpeed -= jumpPower;
		vertState = VertState.inAir;
	}
	else if (image_index > image_number - 4.1)
	{
		ySpeed -= jumpPower;
		vertState = VertState.inAir;
		actionState = Action.idle;
	}
}

if (!place_meeting(x, y + 1, oCollisionParent))
	vertState = VertState.inAir;
else if (place_meeting(x, y + 1, oBlockJumpThroughActivated) && InputManager.fallKeyDown)
	y += 3;