/// @description Insert description here
// You can write your code in this editor

switch (vertState)
{
	case VertState.grounded:
		scrPlayerVStateGrounded();
		prevVState = VertState.grounded;
		break;
	case VertState.inAir:
		scrPlayerVStateInAir();
		prevVState = VertState.inAir;
		break;
}

switch (actionState)
{
	case Action.idle:
		scrPlayerIdleState();
		prevAState = Action.idle;
		break;
	case Action.running:
		scrPlayerRunningState();
		prevAState = Action.running;
		break;
	case Action.meleeAttack:
		scrPlayerMeleeAttackState();
		prevAState = Action.meleeAttack;
		break;
}

#region Apply xSpeed and ySpeed to coordinates
if (!place_meeting(x + xSpeed, y, oCollisionParent)) 
{
	x += xSpeed;
} 
else 
{
	while (!place_meeting(x + sign(xSpeed), y, oCollisionParent)) 
	{
		x += sign(xSpeed);
	}
	xSpeed = 0;
}

y += ySpeed;
#endregion


if (dir != 0) { image_xscale = dir; }