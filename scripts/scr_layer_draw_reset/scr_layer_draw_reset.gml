if event_type = ev_draw
{
	if event_number == 0
	{
		surface_reset_target();
		obj_blood_mask.new = 0;
	}
}