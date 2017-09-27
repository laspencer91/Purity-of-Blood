/// @description Init Camera
cam = camera_create_view(0, 0, 360, 202, 0, -1, -1, -1, 0, 0);

room_set_view_enabled(room, 1);
room_set_viewport(room, 0, 1, 0, 0, 1920, 1080);
view_set_camera(0, cam);


xTo = x;
yTo = y;
xPos = 0;
yPos = 0;