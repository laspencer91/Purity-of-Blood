ySpeed = 0;

if (InputManager.jumpKeyPressed)
{
	ySpeed -= jumpPower;
	vertState = VertState.inAir;
}

if (!place_meeting(x, y + 1, oCollisionParent))
	vertState = VertState.inAir;