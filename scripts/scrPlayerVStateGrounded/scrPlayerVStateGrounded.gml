ySpeed = 0;

if (InputManager.jumpKeyPressed)
{
	if (actionState != Action.meleeAttack)
	{
		ySpeed -= jumpPower;
		vertState = VertState.inAir;
	}
}

if (!place_meeting(x, y + 1, oCollisionParent))
	vertState = VertState.inAir;