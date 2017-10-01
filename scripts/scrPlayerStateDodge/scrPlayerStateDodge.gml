scrPlayerApplyFriction();
image_speed = 10;

if (image_index > image_number - 1.1 || vertState != VertState.grounded)
{
	actionState = Action.idle;
	scrSetSprite(sPlayerBodyIdle, 1, 0);
}

if (InputManager.meleeButtonPressed)
{
	actionState = Action.meleeAttack;
	xSpeed /= 2;
}