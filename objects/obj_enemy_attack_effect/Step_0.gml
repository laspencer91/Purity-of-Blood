timer++;

if !instance_exists(caster) instance_destroy();

if timer >= attackDuration*room_speed || (instance_exists(caster) && caster.phase != originalPhase)
{
	instance_destroy();
}

if instance_exists(caster)
{
	x = caster.x+facing*attackXOffset;
	y = caster.y+attackYOffset;
}
else
{
	//x = x;
	//y = y;
}