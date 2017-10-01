/// @description Recieve Damage

hp -= recieveDamage;
if (hp <= 0)
{
	instance_destroy();
}

flash = 1;