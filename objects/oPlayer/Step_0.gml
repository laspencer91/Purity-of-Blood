/// @description Insert description here
// You can write your code in this editor

switch (vertState)
{
	case VertState.grounded:
		scrPlayerVStateGrounded();
		break;
	case VertState.inAir:
		scrPlayerVStateInAir();
		break;
}

switch (actionState)
{
	case Action.idle:
		scrPlayerIdleState();
		break;
	case Action.running:
		scrPlayerRunningState();
		break;
}

#region Apply xSpeed and ySpeed to coordinates
if (!place_meeting(x + xSpeed, y, oCollisionParent)) {
	x += xSpeed;
} else {
	while (!place_meeting(x + sign(xSpeed), y, oCollisionParent)) {
		x += sign(xSpeed);
	}
	xSpeed = 0;
}

y += ySpeed;
#endregion

if (dir != 0) { image_xscale = dir; }