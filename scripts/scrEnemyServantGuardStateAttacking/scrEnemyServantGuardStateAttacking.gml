if (stateStartDelay <= 0)
{
	scrSetSprite(sprServantGuardAttack1, 1, 0);
	
	if (image_index > 5.9 && image_index < 6.1)
	{
		hb = instance_create_depth(x, y, 0, oEnemyServantGuardAttack1HB);
		hb.image_xscale = image_xscale;
	}
	
	if (image_index > image_number - 1.1)
	{
		actionState = State.alerted;
	}
}
else
{
	stateStartDelay -= 1;
}