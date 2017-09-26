
if (place_meeting(x + xSpeed, y, oCollisionParent))
{
	xSpeed = 0;
	actionState = Action.idle;
}
else
{
	xSpeed = slideAttackSpeed * dir;
}

if (image_index > 1.8 && image_index < 2.2)
{
	image_speed = 0;
	image_index = 2;
}
if (InputManager.horizontalInput + dir == 0)
{
	show_debug_message("Alarm Reset");
	alarm[1] = 1;
}

ySpeed = 0;
if (InputManager.jumpKeyPressed && place_meeting(x, y + 10, oCollisionParent))
{
	alarm[1] = -1;
	slidingAttack = false;
	actionState = Action.idle;
	ySpeed = -jumpPower;
}