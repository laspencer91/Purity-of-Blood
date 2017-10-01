x += (xTo - x) / 10;
y += (yTo - y) / 10;

camera_set_view_pos(cam, -(camera_get_view_width(cam) / 2) + x, -(camera_get_view_height(cam) / 2) + y);

if (screenShake)
{
	oCamera.shakeCount += 0.06;
	hShake = hShake * decayRate;
	vShake = vShake * decayRate;
	
	cameraOffsetX = hShake * cos(shakeCount * shakeRate);
	cameraOffsetY = vShake * sin(shakeCount * shakeRate);
	
	if (hShake <= 0.2)
	{
		cameraOffsetX = 0;
		cameraOffsetY = 0;
		screenShake = false;
	}
}
if (playerHurtEffectAlpha > 0) {
	playerHurtEffectAlpha -= 0.1;
}
else {
	registerPlayerHit = false;
}

if (follow != noone)
{
	xTo = follow.x + cameraOffsetX;
	yTo = follow.y + cameraOffsetY;
}

xPos = clamp(camera_get_view_x(cam), 0, room_width - camera_get_view_width(cam));
yPos = clamp(camera_get_view_y(cam), 0, room_height - camera_get_view_height(cam));

camera_set_view_pos(cam, xPos, yPos);