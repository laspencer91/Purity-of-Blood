var pl = id;
with instance_create_depth(x,y,-100,obj_player_attack_effect)
{
	switch argument0
	{
		case 0:
			attackNum = global.activeCounterId;
			break;
		case 1:
			attackNum = global.activeUpwardsId;
			break;
		case 2:
			attackNum = global.activeDownwardsId;
			break;
		case 3:
			attackNum = global.activeForwardsId;
			break;
		case 4:
			attackNum = global.activeBackwardsId;
			break;
	}
	caster = pl;
	caster.effect = id;
	//get effect properties/collisions
	attackName = global.attackNames[attackNum];
	attackDuration = global.attackDurations[attackNum];
	attackCooldown = global.attackCooldowns[attackNum];
	pl.attackDuration = attackDuration;
	pl.attackAnimation = global.attackAnimations[attackNum];
	pl.attackAnimationWep = global.attackAnimationWeps[attackNum];
	pl.attackAnimationEffect = global.attackAnimationEffects[attackNum];
	pl.attackCooldown = attackCooldown;
	pl.attackMoveDistanceY = global.attackMoveDistancesY[attackNum];
	pl.attackMoveDistanceX = global.attackMoveDistancesX[attackNum];
	pl.attackMoveStart = global.attackMoveStart[attackNum];
	pl.attackMoveDuration = global.attackMoveDuration[attackNum];
	for(var i = 0; i < array_length_2d(global.attackHitStart,attackNum); i++)
	{
		//Hit box numbs
		attackHitStart[i] = global.attackHitStart[attackNum,i];
		attackHitDuration[i] = global.attackHitDuration[attackNum,i];
		//STATS
		attackDamageType[i] = global.attackDamageTypes[attackNum,i];
		attackDamageModifier[i] = global.attackDamageModifiers[attackNum,i];
		attackStaggerModifier[i] = global.attackStaggerModifiers[attackNum,i];
		attackKnockback[i] = global.attackKnockbacks[attackNum,i];
		attackStatusType[i] = global.attackStatusTypes[attackNum,i];
		attackStatusValue[i] = global.attackStatusValues[attackNum,i];
	}
	attackXOffset = global.attackXOffsets[attackNum];
	attackYOffset = global.attackYOffsets[attackNum];

	
	//Set
	timer = 0;
	facing = pl.facing;
	x=pl.x+facing*attackXOffset;
	image_xscale = facing*global.attackWidths[attackNum]/8;
	y=pl.y+attackYOffset;
	image_yscale = global.attackHeights[attackNum]/8;
	
	//pl move set 0
	pl.xSpd = 0;
}