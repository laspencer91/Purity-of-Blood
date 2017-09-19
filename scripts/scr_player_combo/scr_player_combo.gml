//att effect
var pl = id;
with instance_create_depth(x,y,-100,obj_player_attack_effect)
{
	caster = pl;
	attackNum = pl.attackNum;
	caster.effect = id;
	//get effect properties/collisions
	attackName = global.activeComboNames[attackNum];
	attackDuration = global.activeComboDurations[attackNum];
	attackCooldown = global.activeComboCooldowns[attackNum];
	pl.attackDuration = attackDuration;
	pl.attackAnimation = global.activeComboAnimations[attackNum];
	pl.attackAnimationWep = global.activeComboAnimationWeps[attackNum];
	pl.attackAnimationEffect = global.activeComboAnimationEffects[attackNum];
	pl.attackCooldown = global.activeComboCooldowns[attackNum];
	pl.attackMoveDistanceY = global.activeComboMoceDistancesY[attackNum];
	pl.attackMoveDistanceX = global.activeComboMoveDistancesX[attackNum];
	pl.attackMoveStart = global.activeComboMoveStarts[attackNum];
	pl.attackMoveDuration = global.activeComboMoveDurations[attackNum];
	for(var i = 0; i < array_length_2d(global.activeComboHitStarts,attackNum); i++)
	{
		//Hit box numbs
		attackHitStart[i] = global.activeComboHitStarts[attackNum,i];
		attackHitDuration[i] = global.activeComboHitDurations[attackNum,i];
		//STATS
		attackDamageType[i] = global.activeComboAttackTypes[attackNum,i];
		attackDamageModifier[i] = global.activeComboDamageModifiers[attackNum,i];
		attackStaggerModifier[i] = global.activeComboStaggerModifiers[attackNum,i];
		attackKnockback[i] = global.activeComboKnockbacks[attackNum,i];
		attackStatusType[i] = global.activeComboStatusTypes[attackNum,i];
		attackStatusValue[i] = global.activeComboStatusValues[attackNum,i];
	}
	attackXOffset = global.activeComboXOffsets[attackNum];
	attackYOffset = global.activeComboYOffsets[attackNum];

	
	//Set
	timer = 0;
	facing = pl.facing;
	x=pl.x+facing*attackXOffset;
	image_xscale = facing*global.activeComboWidths[attackNum]/8;
	y=pl.y+attackYOffset;
	image_yscale = global.activeComboHeights[attackNum]/8;
	
	//pl move set 0
	pl.xSpd = 0;
}