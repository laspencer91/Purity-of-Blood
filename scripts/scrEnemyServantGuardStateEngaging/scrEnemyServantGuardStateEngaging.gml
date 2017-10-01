//show_debug_message("Engaging State" + string(State.engaging) + " " + string(current_time));

var distanceToPlayer = distance_to_object(oPlayer);
show_debug_message(string(distanceToPlayer));

if (distanceToPlayer > 200 || y - oPlayer.y > 28)
{
	if (--lostTargetTimer <= 0)
	{
		actionState = State.idle;
	}
	sprite_index = sprServantGuardParry;
}
else
{
	if (!collision_line(x, y, oPlayer.x, oPlayer.y, oSightBlocker, false, true))
	{
		seePlayer = true;
		lastSeenPositionX = oPlayer.x;
		lastSeenPositionY = oPlayer.y;
	}
	else
	{
		seePlayer = false;
	}
	
	lostTargetTimer = 300;
	facingDir = sign(lastSeenPositionX - x);
	distToX = point_distance(x, y, lastSeenPositionX, y);
	
	if (seePlayer)
	{
		if (distanceToPlayer < 2 + irandom(10))
		{
			actionState = State.attacking;
			stateStartDelay = startAttackDelay;
			scrSetSprite(sprServantGuardParry, 1, 0);
		}
		else if (distanceToPlayer < 50)
		{
			if (place_meeting(x + engageSpeed * facingDir, y - 1, oCollisionParentEnemy))
			{
				scrSetSprite(sprServantGuardIdle, 1, 0);
			}
			else
			{
				x += engageSpeed * facingDir;
				scrSetSprite(sprServantGuardParryWalk, 1, 0);
			}
		}
		else
		{
			if (place_meeting(x + walkSpeed * facingDir, y - 1, oCollisionParentEnemy))
			{
				scrSetSprite(sprServantGuardIdle, 1, 0);
			}
			else
			{
				x += walkSpeed * facingDir;
				scrSetSprite(sprServantGuardWalk, 1, 0);
			}
		}
	}
	else if (distToX < 10 + aiVariance)
	{
		scrSetSprite(sprServantGuardIdle, 1, 0);
	}
	else
	{
		x += engageSpeed * facingDir;
		scrSetSprite(sprServantGuardParryWalk, 1, 0);
	}
}