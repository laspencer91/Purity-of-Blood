/// @description Finite State Machine

#region Gravity
if (!place_meeting(x, y + ySpeed, oCollisionParentEnemy))
{
	if (ySpeed < maxFallSpeed)
	{
		ySpeed += grav;
	}
}
else
{
	while (!place_meeting(x, y + sign(ySpeed), oCollisionParentEnemy)) 
	{
		y += sign(ySpeed);
	}
	ySpeed = 0;
}
#endregion

switch (actionState)
{
	case State.idle:
	scrEnemyServantGuardStateIdle();
	break;
	case State.walking:
	scrEnemyServantGuardStateWalking();
	break;
	case State.alerted:
	scrEnemyServantGuardStateAlerted();
	break;
	case State.engaging:
	scrEnemyServantGuardStateEngaging();
	break;
	case State.attacking:
	scrEnemyServantGuardStateAttacking();
	break;
}

image_xscale = facingDir;
y += ySpeed;