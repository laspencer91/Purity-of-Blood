attackAnimationSpeed = 14;
if (prevAState != Action.meleeAttack)
{
	meleeComboCount = 0;
}

// Push off then handle the friction for stopping
if (image_index < 0.4)
{
	xSpeed = 8 * dir;
}
scrPlayerApplyFriction();

switch (meleeComboCount)
{
	case (0):
	{
		scrPlayerSetSprite(sPlayerBodySlice, attackAnimationSpeed, 0);
		if (image_index > 3)
		{
			if (InputManager.meleeButtonPressed && queueNextMelee == false)
				queueNextMelee = true;
			if (image_index > image_number - 1.1)
			{
				if (queueNextMelee == true)
				{
					queueNextMelee = false;
					meleeComboCount += 1;
				}
				else
					actionState = Action.idle;
			}
		}
		break;
	}
	case (1):
	{
		scrPlayerSetSprite(sPlayerBodySlice2, attackAnimationSpeed, 0);
		if (image_index > 3)
		{
			if (InputManager.meleeButtonPressed && queueNextMelee == false)
				queueNextMelee = true;
			if (image_index > image_number - 1.1)
			{
				if (queueNextMelee == true)
				{
					queueNextMelee = false;
					meleeComboCount += 1;
				}
				else
					actionState = Action.idle;
			}
		}
		break;
	}
	case (2):
	{
		scrPlayerSetSprite(sPlayerBodySlice, attackAnimationSpeed, 0);
		if (image_index > 3)
		{
			if (InputManager.meleeButtonPressed && queueNextMelee == false)
				queueNextMelee = true;
			if (image_index > image_number - 1.1)
			{
				if (queueNextMelee == true)
				{
					queueNextMelee = false;
					meleeComboCount += 1;
				}
				else
					actionState = Action.idle;
			}
		}
		break;
	}
	case (3):
	{
		scrPlayerSetSprite(sPlayerBodySmash, attackAnimationSpeed, 0);
		if (image_index > 3)
		{
			if (InputManager.meleeButtonPressed && queueNextMelee == false)
				queueNextMelee = true;
			if (image_index > image_number - 1.1)
			{
				if (queueNextMelee == true)
				{
					queueNextMelee = false;
					meleeComboCount = 0;			// Reset combo at this point
				}
				else
					actionState = Action.idle;
			}
		}
		break;
	}
}