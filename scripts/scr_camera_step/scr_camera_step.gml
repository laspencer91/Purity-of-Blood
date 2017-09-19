x += (xTo -x)/10;
y += (yTo -y)/10;

camera_set_view_pos(cam,-(camera_get_view_width(cam)/2)+x,-(camera_get_view_height(cam)/2)+y);

if (follow !=noone)
{
	if !follow.hardLockOn
	{
		xTo = follow.x
		yTo = follow.y
	}
	else
	{
		if instance_exists(follow.lockOnTarget)
		{
			var lockTarget = follow.lockOnTarget;
			xTo = (follow.x*3 + lockTarget.x)/4
			yTo = (follow.y*3 + lockTarget.y)/4
		}
	}
}

xPos = clamp(camera_get_view_x(cam),0,room_width-camera_get_view_width(cam));
yPos = clamp(camera_get_view_y(cam),0,room_height-camera_get_view_height(cam));

camera_set_view_pos(cam,xPos,yPos);