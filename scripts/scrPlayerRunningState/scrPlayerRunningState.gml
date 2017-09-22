input = InputManager.horizontalInput;
dir = sign(xSpeed);

if (input == 0)
{
	if (xSpeed != 0) {
		xSpeed -= frict * dir;
		if (xSpeed <= frict && xSpeed >= -frict) xSpeed = 0;
		show_debug_message(string(min(frict, abs(xSpeed - frict - 0.1)) * dir));
	}
	else
		actionState = Action.idle;
}
else
{
	if (input < 0) {
		if (xSpeed > -maxRunSpeed)
			xSpeed -= accel;
	}
	else {
		if (xSpeed < maxRunSpeed)
			xSpeed += accel;
	}
}

scrPlayerSetSprite(sPlayerBodyRun, (maxRunSpeed - abs(xSpeed)) * maxRunSpeed, 0);