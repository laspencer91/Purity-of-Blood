x += (xTo - x) / 10;
y += (yTo - y) / 10;

camera_set_view_pos(cam, -(camera_get_view_width(cam) / 2) + x, -(camera_get_view_height(cam) / 2) + y);

if (follow != noone)
{
	xTo = follow.x;
	yTo = follow.y;
}

xPos = clamp(camera_get_view_x(cam), 0, room_width - camera_get_view_width(cam));
yPos = clamp(camera_get_view_y(cam), 0, room_height - camera_get_view_height(cam));

camera_set_view_pos(cam, xPos, yPos);