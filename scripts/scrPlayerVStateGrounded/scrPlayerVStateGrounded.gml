ySpeed = 0;

if (InputManager.jumpKeyPressed && !InputManager.rollInput)
{
	if (actionState != Action.meleeAttack)
	{
		ySpeed -= jumpPower;
		vertState = VertState.inAir;
	}
}

if (!place_meeting(x, y + 1, oCollisionParent))
	vertState = VertState.inAir;
else if (place_meeting(x, y + 1, oBlockJumpThroughActivated) && InputManager.fallKeyDown)
	y += 3;