if event_type = ev_draw
{
	if event_number == 0
	{
		surf = obj_blood_mask.surfaceWithMask;
		surface_set_target(surf);
	}
}