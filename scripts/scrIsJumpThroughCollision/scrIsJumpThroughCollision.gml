if (place_meeting(x, y + ySpeed, oBlockJumpThrough)) 
{
	if (bbox_bottom < instance_place(x, y + ySpeed, oBlockJumpThrough).bbox_top)
		return true;
}
return false;