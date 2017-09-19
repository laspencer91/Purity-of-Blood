if lifeTimer = 1 
{
	if casterType == "temp" instance_destroy(caster);
	instance_destroy();
}
lifeTimer++;

image_xscale = 2*radius/initialWidth;
image_yscale = 2*radius/initialWidth;