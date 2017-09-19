var pl = id;
with instance_create_depth(x,y,-100,obj_player_attack_effect)
{
	caster = pl;
	caster.effect = id;
	//get effect properties/collisions
	offId = global.activeOffhandID;
	subId = global.activeOffhandSubtypeID;
	attackName = "uppercut";
	attackDuration = 0.6;
	attackCooldown = 0.2;
	pl.attackDuration = attackDuration;
	pl.attackCooldown = attackCooldown;
	
	//Hit box numbs
	attackHitStart[0] = 0.4;
	attackHitDuration[0] = 0.2;
	//STATS
	attackDamageType[0] = global.offhandSubtypeDamageTypes[subId];
	attackDamageModifier[0] = 0.3;
	attackStaggerModifier[0] = 1.3;
	attackKnockback[0] = -1;
	attackStatusType[0] = -1;
	attackStatusValue[0] = -1;
	
	attackXOffset = 8*24;
	attackYOffset = 8*2;
	attackWidth = 8*26;
	attackHeight = 8*26;

	
	//Set
	timer = 0;
	facing = pl.facing;
	x=pl.x+facing*attackXOffset;
	image_xscale = facing*attackWidth/8;
	y=pl.y+attackYOffset;
	image_yscale = attackHeight/8;
	
	//pl move set 0
	pl.xSpd = 0;
}