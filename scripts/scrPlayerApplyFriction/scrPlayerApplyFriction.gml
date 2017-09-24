if (abs(xSpeed) != 0) 
{
	xSpeed -= frict * dir;
	if (abs(xSpeed) <= frict) xSpeed = 0;
}