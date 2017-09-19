if place_meeting(x,y,obj_player)
{
	lightUp = 1;
	timer++;
	if global.bInput
	{
			pausing = 1;
	}
}
else {lightUp = 0; timer = 0;}

if timer == 16*4 timer = 0;