attackAnimationSpeed = 14;
if (prevAState != Action.meleeAttack)
{
	meleeComboCount = 0;
}

// Push off then handle the friction for stopping
if (image_index < 0.4)
{
	xSpeed = 5 * dir;
}
scrPlayerApplyFriction();

// We can say that the next attack is queued if input is found after a certain image number.
// If the next attack is queued we simply increase meleeComboCount. In the final case the combo
// count will reset to 0. Each case gets its own sprites and can have its own transitions to other
// abilities.

// TODO: Maybe separate the cases out to individual scripts when they become larger
switch (meleeComboCount)
{
	case (0):					// First sword swing
	{
		scrPlayerSetSprite(sPlayerBodySlice, attackAnimationSpeed, 0);
		
		if (image_index >= 3)
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
					scrPlayerEndMeleeCombo(meleeComboDelay / 2);
			}
		}
		break;
	}
	case (1):					// Second sword swing
	{
		scrPlayerSetSprite(sPlayerBodySlice2, attackAnimationSpeed, 0);
		
		if (image_index >= 3)
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
					scrPlayerEndMeleeCombo(meleeComboDelay / 2);
			}
		}
		break;
	}
	case (2):					// Third sword swing
	{
		scrPlayerSetSprite(sPlayerBodySlice, attackAnimationSpeed, 0);
		
		if (image_index >= 3)
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
					scrPlayerEndMeleeCombo(meleeComboDelay / 2);
			}
		}
		break;
	}
	case (3):					// Fourth sword swing
	{
		scrPlayerSetSprite(sPlayerBodySmash, attackAnimationSpeed, 0);
		
		if (image_index >= 3)
		{
			if (InputManager.meleeButtonPressed && queueNextMelee == false)
				queueNextMelee = true;
			if (image_index > image_number - 1.1)
			{
				queueNextMelee = false;
				meleeComboCount = 0;			// Reset combo at this point
				scrPlayerEndMeleeCombo(meleeComboDelay);
			}
		}
		break;
	}
}