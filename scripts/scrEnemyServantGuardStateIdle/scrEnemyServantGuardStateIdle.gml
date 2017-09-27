if (scrDetectPlayer(facingDir, sightDist, fov, oPlayer))
{
	show_message("YOUVE BEEN DETECTED");
	facingDir *= -1;
	image_xscale = facingDir;
}