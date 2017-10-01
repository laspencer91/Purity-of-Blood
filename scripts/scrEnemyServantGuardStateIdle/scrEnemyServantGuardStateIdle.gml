if (instance_exists(oPlayerAttackHB))
	engaged = instance_place(x,y, oPlayerAttackHB);
else
	engaged = false;

if (scrDetectPlayer(facingDir, sightDist, fov, oPlayer))
{
	actionState = State.alerted;
	lastSeenPositionX = oPlayer.x;
	lastSeenPositionY = oPlayer.y;
	scrSetSprite(sprServantGuardParry, 1, 0);
	stateStartDelay = reactionDelay;
}
else if (engaged)
{
	emgaged = false;
	actionState = State.alerted;
	lastSeenPositionX = oPlayer.x;
	lastSeenPositionY = oPlayer.y;
	scrSetSprite(sprServantGuardParry, 1, 0);
}