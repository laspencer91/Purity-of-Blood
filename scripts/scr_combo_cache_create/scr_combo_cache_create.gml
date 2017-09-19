global.comboCache = id;

//GROUND COMBO VARIABLES
//Attack Types:
//	0: non-typical, used for utilities like counter attacks && directional attacks
//	1: all slots
//	2: initial
//	3: middle
//	4: finisher
//Attacks:
//1: Sword
//		0: Slice (Has alternate animation)
//		1: Burst
//		2: Smash
//		3: Gut

//#0 Counter: Counter attack - flows into rest of combo afterwards
var tmpId = 0;
global.attackNames[tmpId] = "Counter";								//Name to be displayed in combo editor
global.attackTypes[tmpId] = 0;										//dictates possible slots for editor, key above
global.attackAnimations[tmpId] = spr_player_counter_body;			//body sprite
global.attackAnimationWeps[tmpId] = spr_player_burst_weapon;		//weapon sprite
global.attackAnimationEffects[tmpId] = spr_player_burst_effect;		//effect sprite
global.attackDurations[tmpId] = 0.4;								//active attack duration (seconds)			//below code looks complex but just place the relevant
global.attackCooldowns[tmpId] = 0.2;								//cooldown period AFTER duration (seconds)	//time in FRAMES in between the "/**/"s (collumn index is for multiple hits)
global.attackHitStart[tmpId,0] = (global.attackDurations[tmpId]+global.attackCooldowns[tmpId])*(/**/1/**//sprite_get_number(global.attackAnimations[tmpId]));
global.attackHitDuration[tmpId,0] = (global.attackDurations[tmpId]+global.attackCooldowns[tmpId])*(/**/1/**//sprite_get_number(global.attackAnimations[tmpId]));
global.attackMoveStart[tmpId] = (global.attackDurations[tmpId]+global.attackCooldowns[tmpId])*(/**/1/**//sprite_get_number(global.attackAnimations[tmpId]));
global.attackMoveDuration[tmpId] = (global.attackDurations[tmpId]+global.attackCooldowns[tmpId])*(/**/1/**//sprite_get_number(global.attackAnimations[tmpId]));
global.attackMoveDistancesY[tmpId] = 8*0;							//total distance moved Vertically over move duration (8*<distance in pixels>)
global.attackMoveDistancesX[tmpId] = 8*24;							//total distance moved Horizontally over move duration (8*<distance in pixels>)
global.attackXOffsets[tmpId] = 8*16;								//distance from player center where center of hitbox will be along X axis (8*<distance in pixels>)
global.attackYOffsets[tmpId] = 8*-6;								//distance from player center where center of hitbox will be along Y axis (8*<distance in pixels>)
global.attackWidths[tmpId] = 8*30;									//width of hit box about box center (8*<width in pixels>)
global.attackHeights[tmpId] = 8*18;									//height of hit box about box center (8*<height in pixels>)
global.attackDamageTypes[tmpId,0] = 0;								//Damage Type (-1:None|0:Slash|1:Blunt|2:Pierce|3:Fire|4:Ice|5:Lightning|6:Arcane|7:Light|8:Dark)
global.attackDamageModifiers[tmpId,0] = 1.3;							//Damage modifier (multiplicative)
global.attackStaggerModifiers[tmpId,0] = 1.3;							//Stagger modifier (multiplicative)
global.attackKnockbacks[tmpId,0] = 40;								//Physics knockback on a heavy stagger attack
global.attackStatusTypes[tmpId,0] = -1;								//Status Type (-1:None|0:Bleed)
global.attackStatusValues[tmpId,0] = 0;								//Status Value (NEED BASED ON PLAYER STAT IMPLEMENTATION)

//#1 Skyward Slice: Upwards attack - slash upwards while jumping, does not (typically) uppercut enemies
tmpId++;
global.attackNames[tmpId] = "Skyward Slice";
global.attackTypes[tmpId] = 0;
global.attackAnimations[tmpId] = spr_player_skywardSlice_body;
global.attackAnimationWeps[tmpId] = spr_player_slice_weapon;
global.attackAnimationEffects[tmpId] = spr_player_slice_effect;
global.attackDurations[tmpId] = 0.6;
global.attackCooldowns[tmpId] = 0.2;
global.attackHitStart[tmpId,0] = (global.attackDurations[tmpId]+global.attackCooldowns[tmpId])*(/**/1/**//sprite_get_number(global.attackAnimations[tmpId]));
global.attackHitDuration[tmpId,0] = (global.attackDurations[tmpId]+global.attackCooldowns[tmpId])*(/**/2/**//sprite_get_number(global.attackAnimations[tmpId]));
global.attackMoveStart[tmpId] = (global.attackDurations[tmpId]+global.attackCooldowns[tmpId])*(/**/2/**//sprite_get_number(global.attackAnimations[tmpId]));
global.attackMoveDuration[tmpId] = (global.attackDurations[tmpId]+global.attackCooldowns[tmpId])*(/**/1/**//sprite_get_number(global.attackAnimations[tmpId]));
global.attackMoveDistancesY[tmpId] = 8*-40;
global.attackMoveDistancesX[tmpId] = 8*0;
global.attackXOffsets[tmpId] = 8*16;
global.attackYOffsets[tmpId] = 8*-6;
global.attackWidths[tmpId] = 8*30;
global.attackHeights[tmpId] = 8*18;
global.attackDamageTypes[tmpId,0] = 0;
global.attackDamageModifiers[tmpId,0] = 0.3;
global.attackStaggerModifiers[tmpId,0] = 1;
global.attackKnockbacks[tmpId,0] = -1;
global.attackStatusTypes[tmpId,0] = -1;
global.attackStatusValues[tmpId,0] = 0;

//#2 Earthen Release: Downwards attack - attack to both sides of player with moderate reach, low damage and high stagger
tmpId++;
global.attackNames[tmpId] = "Earthen Release"
global.attackTypes[tmpId] = 0;
global.attackAnimations[tmpId] = spr_player_earthenRelease_body;
global.attackAnimationWeps[tmpId] = spr_player_burst_weapon;
global.attackAnimationEffects[tmpId] = spr_player_burst_effect;
global.attackDurations[tmpId] = 0.8;
global.attackCooldowns[tmpId] = 0.4;
global.attackHitStart[tmpId,0] = (global.attackDurations[tmpId]+global.attackCooldowns[tmpId])*(/**/2/**//sprite_get_number(global.attackAnimations[tmpId]));
global.attackHitDuration[tmpId,0] = (global.attackDurations[tmpId]+global.attackCooldowns[tmpId])*(/**/2/**//sprite_get_number(global.attackAnimations[tmpId]));
global.attackMoveStart[tmpId] = (global.attackDurations[tmpId]+global.attackCooldowns[tmpId])*(/**/2/**//sprite_get_number(global.attackAnimations[tmpId]));
global.attackMoveDuration[tmpId] = (global.attackDurations[tmpId]+global.attackCooldowns[tmpId])*(/**/1/**//sprite_get_number(global.attackAnimations[tmpId]));
global.attackMoveDistancesY[tmpId] = 8*0;
global.attackMoveDistancesX[tmpId] = 8*0;
global.attackXOffsets[tmpId] = 8*0;
global.attackYOffsets[tmpId] = 8*-12;
global.attackWidths[tmpId] = 8*60;
global.attackHeights[tmpId] = 8*32;
global.attackDamageTypes[tmpId,0] = 2;								
global.attackDamageModifiers[tmpId,0] = 0.8;					
global.attackStaggerModifiers[tmpId,0] = 1.3;			
global.attackKnockbacks[tmpId,0] = 25;						
global.attackStatusTypes[tmpId,0] = -1;					
global.attackStatusValues[tmpId,0] = 0;	

//#3 Burst: Forwards attack - flows into rest of combo
tmpId++;
global.attackNames[tmpId] = "Burst"
global.attackTypes[tmpId] = 2;
global.attackAnimations[tmpId] = spr_player_burst_body;
global.attackAnimationWeps[tmpId] = spr_player_burst_weapon;
global.attackAnimationEffects[tmpId] = spr_player_burst_effect;
global.attackDurations[tmpId] = 0.6;
global.attackCooldowns[tmpId] = 0.4;
global.attackHitStart[tmpId,0] = (global.attackDurations[tmpId]+global.attackCooldowns[tmpId])*(/**/2/**//sprite_get_number(global.attackAnimations[tmpId]));
global.attackHitDuration[tmpId,0] = (global.attackDurations[tmpId]+global.attackCooldowns[tmpId])*(/**/2/**//sprite_get_number(global.attackAnimations[tmpId]));
global.attackMoveStart[tmpId] = (global.attackDurations[tmpId]+global.attackCooldowns[tmpId])*(/**/2/**//sprite_get_number(global.attackAnimations[tmpId]));
global.attackMoveDuration[tmpId] = (global.attackDurations[tmpId]+global.attackCooldowns[tmpId])*(/**/1/**//sprite_get_number(global.attackAnimations[tmpId]));
global.attackMoveDistancesY[tmpId] = 8*0;
global.attackMoveDistancesX[tmpId] = 8*80;
global.attackXOffsets[tmpId] = 8*16;
global.attackYOffsets[tmpId] = 8*-6;
global.attackWidths[tmpId] = 8*30;
global.attackHeights[tmpId] = 8*18;
global.attackDamageTypes[tmpId,0] = 2;								
global.attackDamageModifiers[tmpId,0] = 0.8;					
global.attackStaggerModifiers[tmpId,0] = 1.3;			
global.attackKnockbacks[tmpId,0] = 25;						
global.attackStatusTypes[tmpId,0] = -1;					
global.attackStatusValues[tmpId,0] = 0;	

//#4 Shove: Backwards attack - slow attack pushing enemy backwards
tmpId++;
global.attackNames[tmpId] = "Shove";
global.attackTypes[tmpId] = 0;
global.attackAnimations[tmpId] = spr_player_shove_body;
global.attackAnimationWeps[tmpId] = spr_player_slice_weapon;
global.attackAnimationEffects[tmpId] = spr_player_slice_effect;
global.attackDurations[tmpId] = 0.6;
global.attackCooldowns[tmpId] = 0.3;
global.attackHitStart[tmpId,0] = (global.attackDurations[tmpId]+global.attackCooldowns[tmpId])*(/**/1/**//sprite_get_number(global.attackAnimations[tmpId]));
global.attackHitDuration[tmpId,0] = (global.attackDurations[tmpId]+global.attackCooldowns[tmpId])*(/**/1/**//sprite_get_number(global.attackAnimations[tmpId]));
global.attackMoveStart[tmpId] = (global.attackDurations[tmpId]+global.attackCooldowns[tmpId])*(/**/1/**//sprite_get_number(global.attackAnimations[tmpId]));
global.attackMoveDuration[tmpId] = (global.attackDurations[tmpId]+global.attackCooldowns[tmpId])*(/**/1/**//sprite_get_number(global.attackAnimations[tmpId]));
global.attackMoveDistancesY[tmpId] = 8*0;
global.attackMoveDistancesX[tmpId] = 8*6;
global.attackXOffsets[tmpId] = 8*16;
global.attackYOffsets[tmpId] = 8*-6;
global.attackWidths[tmpId] = 8*30;
global.attackHeights[tmpId] = 8*18;
global.attackDamageTypes[tmpId,0] = 1;
global.attackDamageModifiers[tmpId,0] = 0.2;
global.attackStaggerModifiers[tmpId,0] = 2.5;
global.attackKnockbacks[tmpId,0] = 30;
global.attackStatusTypes[tmpId,0] = -1;
global.attackStatusValues[tmpId,0] = 0;

//#5 Slice: fast basic strike
tmpId++;
global.attackNames[tmpId] = "Slice";
global.attackTypes[tmpId] = 1;
global.attackAnimations[tmpId] = spr_player_slice_body;
global.attackAnimationWeps[tmpId] = spr_player_slice_weapon;
global.attackAnimationEffects[tmpId] = spr_player_slice_effect;
global.attackDurations[tmpId] = 0.4;
global.attackCooldowns[tmpId] = 0.2;
global.attackHitStart[tmpId,0] = (global.attackDurations[tmpId]+global.attackCooldowns[tmpId])*(/**/1/**//sprite_get_number(global.attackAnimations[tmpId]));
global.attackHitDuration[tmpId,0] = (global.attackDurations[tmpId]+global.attackCooldowns[tmpId])*(/**/1/**//sprite_get_number(global.attackAnimations[tmpId]));
global.attackMoveStart[tmpId] = (global.attackDurations[tmpId]+global.attackCooldowns[tmpId])*(/**/1/**//sprite_get_number(global.attackAnimations[tmpId]));
global.attackMoveDuration[tmpId] = (global.attackDurations[tmpId]+global.attackCooldowns[tmpId])*(/**/1/**//sprite_get_number(global.attackAnimations[tmpId]));
global.attackMoveDistancesY[tmpId] = 8*0;
global.attackMoveDistancesX[tmpId] = 8*6;
global.attackXOffsets[tmpId] = 8*16;
global.attackYOffsets[tmpId] = 8*-6;
global.attackWidths[tmpId] = 8*30;
global.attackHeights[tmpId] = 8*18;
global.attackDamageTypes[tmpId,0] = 0;
global.attackDamageModifiers[tmpId,0] = 1;
global.attackStaggerModifiers[tmpId,0] = 1.25;
global.attackKnockbacks[tmpId,0] = 0;
global.attackStatusTypes[tmpId,0] = -1;
global.attackStatusValues[tmpId,0] = 0;				

//#6 Smash: Heavy knockback attack
tmpId++;
global.attackNames[tmpId] = "Smash"
global.attackTypes[tmpId] = 4;
global.attackAnimations[tmpId] = spr_player_smash_body;
global.attackAnimationWeps[tmpId] = spr_player_smash_weapon;
global.attackAnimationEffects[tmpId] = spr_player_smash_effect;
global.attackDurations[tmpId] = 0.6;
global.attackCooldowns[tmpId] = 0.4;
global.attackHitStart[tmpId,0] = (global.attackDurations[tmpId]+global.attackCooldowns[tmpId])*(/**/2/**//sprite_get_number(global.attackAnimations[tmpId]));
global.attackHitDuration[tmpId,0] = (global.attackDurations[tmpId]+global.attackCooldowns[tmpId])*(/**/2/**//sprite_get_number(global.attackAnimations[tmpId]));
global.attackMoveStart[tmpId] = (global.attackDurations[tmpId]+global.attackCooldowns[tmpId])*(/**/1/**//sprite_get_number(global.attackAnimations[tmpId]));
global.attackMoveDuration[tmpId] = (global.attackDurations[tmpId]+global.attackCooldowns[tmpId])*(/**/1/**//sprite_get_number(global.attackAnimations[tmpId]));
global.attackMoveDistancesY[tmpId] = 8*0;
global.attackMoveDistancesX[tmpId] = 8*8;
global.attackXOffsets[tmpId] = 8*8;
global.attackYOffsets[tmpId] = 8*-8;
global.attackWidths[tmpId] = 8*40;
global.attackHeights[tmpId] = 8*30;
global.attackDamageTypes[tmpId,0] = 1;								
global.attackDamageModifiers[tmpId,0] = 2.8;					
global.attackStaggerModifiers[tmpId,0] = 4;			
global.attackKnockbacks[tmpId,0] = 80;						
global.attackStatusTypes[tmpId,0] = -1;					
global.attackStatusValues[tmpId,0] = 0;		

//#7 Gut: bleed inducing finisher, attemps to knock down opponent on second hit
tmpId++;
global.attackNames[tmpId] = "Gut"
global.attackTypes[tmpId] = 4;
global.attackAnimations[tmpId] = spr_player_gut_body;
global.attackAnimationWeps[tmpId] = spr_player_gut_weapon;
global.attackAnimationEffects[tmpId] = spr_player_gut_effect;
global.attackDurations[tmpId] = 2;
global.attackCooldowns[tmpId] = 0;
global.attackHitStart[tmpId,0] = (global.attackDurations[tmpId]+global.attackCooldowns[tmpId])*(/**/2/**//sprite_get_number(global.attackAnimations[tmpId]));
global.attackHitDuration[tmpId,0] = (global.attackDurations[tmpId]+global.attackCooldowns[tmpId])*(/**/2/**//sprite_get_number(global.attackAnimations[tmpId]));
global.attackHitStart[tmpId,1] = (global.attackDurations[tmpId]+global.attackCooldowns[tmpId])*(/**/8/**//sprite_get_number(global.attackAnimations[tmpId]));
global.attackHitDuration[tmpId,1] = (global.attackDurations[tmpId]+global.attackCooldowns[tmpId])*(/**/1/**//sprite_get_number(global.attackAnimations[tmpId]));
global.attackMoveStart[tmpId] = (global.attackDurations[tmpId]+global.attackCooldowns[tmpId])*(/**/1/**//sprite_get_number(global.attackAnimations[tmpId]));
global.attackMoveDuration[tmpId] = (global.attackDurations[tmpId]+global.attackCooldowns[tmpId])*(/**/1/**//sprite_get_number(global.attackAnimations[tmpId]));
global.attackMoveDistancesY[tmpId] = 8*0;
global.attackMoveDistancesX[tmpId] = 8*2;
global.attackXOffsets[tmpId] = 8*16;
global.attackYOffsets[tmpId] = 8*0;
global.attackWidths[tmpId] = 8*20;
global.attackHeights[tmpId] = 8*9;
global.attackDamageTypes[tmpId,0] = 2;
global.attackDamageModifiers[tmpId,0] = 0.5;
global.attackStaggerModifiers[tmpId,0] = 2;
global.attackKnockbacks[tmpId,0] = 0;
global.attackStatusTypes[tmpId,0] = -1;
global.attackStatusValues[tmpId,0] = 0;
global.attackDamageTypes[tmpId,1] = 2;
global.attackDamageModifiers[tmpId,1] = 0.1;
global.attackStaggerModifiers[tmpId,1] = 4;
global.attackKnockbacks[tmpId,1] = 20;
global.attackStatusTypes[tmpId,1] = 0;
global.attackStatusValues[tmpId,1] = 130;

//class ID lists
//Sword: (0)Slice (1)Burst (2)Smash (3)Gut
swordClassId = 0;
swordCounterId = 0;
swordUpwardsId = 1;
swordDownwardsId = 2;
swordForwardsId = 3;
swordBackwardsId = 4;
swordSize = tmpId
for(var i = 0; i < tmpId+1; i++)
{
	classSwordAttackIDs[i] = i+swordClassId;
}

//AERIAL COMBO VARIABLES
//Attacks:
//1: Sword
//		0: Basic (HAS ALTERNATE ANIMATION)
//		1: Slam

//#0 Basic
var tmpId = 0;
global.aerialNames[tmpId] = "Basic";								//Name to be displayed in combo editor
global.aerialAnimations[tmpId] = spr_player_aerialSlash_body;				//body sprite
global.aerialAnimationWeps[tmpId] = spr_player_aerialSlash_weapon;		//weapon sprite
global.aerialAnimationEffects[tmpId] = spr_player_aerialSlash_effect;		//effect sprite
global.aerialSpecialEffects[tmpId] = "";
global.aerialDurations[tmpId] = 0.4;								//active attack duration (seconds)			//below code looks complex but just place the relevant
global.aerialCooldowns[tmpId] = 0.2;								//cooldown period AFTER duration (seconds)	//FRAMES in between the "/**/"s (collumn index is for multiple hits)
global.aerialHitStart[tmpId,0] = (global.aerialDurations[tmpId]+global.aerialCooldowns[tmpId])*(/**/1/**//sprite_get_number(global.aerialAnimations[tmpId]));
global.aerialHitDuration[tmpId,0] = (global.aerialDurations[tmpId]+global.aerialCooldowns[tmpId])*(/**/2/**//sprite_get_number(global.aerialAnimations[tmpId]));
global.aerialMoveStart[tmpId] = (global.aerialDurations[tmpId]+global.aerialCooldowns[tmpId])*(/**/1/**//sprite_get_number(global.aerialAnimations[tmpId]));
global.aerialMoveDuration[tmpId] = (global.aerialDurations[tmpId]+global.aerialCooldowns[tmpId])*(/**/2/**//sprite_get_number(global.aerialAnimations[tmpId]));
global.aerialMoveDistancesY[tmpId] = 8*-4;
global.aerialMoveDistancesX[tmpId] = 8*4;
global.aerialXOffsets[tmpId] = 8*16;								//distance from player center where center of hitbox will be along X axis (8*<distance in pixels>)
global.aerialYOffsets[tmpId] = 8*-6;								//distance from player center where center of hitbox will be along Y axis (8*<distance in pixels>)
global.aerialWidths[tmpId] = 8*30;									//width of hit box about box center (8*<width in pixels>)
global.aerialHeights[tmpId] = 8*18;									//height of hit box about box center (8*<height in pixels>)
global.aerialDamageTypes[tmpId,0] = 0;								//Damage Type (-1:None|0:Slash|1:Blunt|2:Pierce|3:Fire|4:Ice|5:Lightning|6:Arcane|7:Light|8:Dark)
global.aerialDamageModifiers[tmpId,0] = 1;							//Damage modifier (multiplicative)
global.aerialStaggerModifiers[tmpId,0] = 1.2;							//Stagger modifier (multiplicative)
global.aerialKnockbacks[tmpId,0] = 0;								//Physics knockback on a heavy stagger attack
global.aerialStatusTypes[tmpId,0] = -1;								//Status Type (-1:None|0:Bleed)
global.aerialStatusValues[tmpId,0] = 0;								//Status Value (NEED BASED ON PLAYER STAT IMPLEMENTATION)

//#1 Slam
tmpId++;
global.aerialNames[tmpId] = "Slam"
global.aerialTypes[tmpId] = 2;
global.aerialAnimations[tmpId] = spr_player_aerialFinish_body;
global.aerialAnimationWeps[tmpId] = spr_player_aerialFinish_weapon;
global.aerialAnimationEffects[tmpId] = spr_player_aerialFinish_effect;
global.aerialSpecialEffects[tmpId] = "";
global.aerialDurations[tmpId] = 0.6;
global.aerialCooldowns[tmpId] = 0.4;
global.aerialHitStart[tmpId,0] = (global.aerialDurations[tmpId]+global.aerialCooldowns[tmpId])*(/**/3/**//sprite_get_number(global.aerialAnimations[tmpId]));
global.aerialHitDuration[tmpId,0] = (global.aerialDurations[tmpId]+global.aerialCooldowns[tmpId])*(/**/2/**//sprite_get_number(global.aerialAnimations[tmpId]));
global.aerialMoveStart[tmpId] = (global.aerialDurations[tmpId]+global.aerialCooldowns[tmpId])*(/**/1/**//sprite_get_number(global.aerialAnimations[tmpId]));
global.aerialMoveDuration[tmpId] = (global.aerialDurations[tmpId]+global.aerialCooldowns[tmpId])*(/**/4/**//sprite_get_number(global.aerialAnimations[tmpId]));
global.aerialMoveDistancesY[tmpId] = 8*-4;
global.aerialMoveDistancesX[tmpId] = 8*4;
global.aerialXOffsets[tmpId] = 8*8;
global.aerialYOffsets[tmpId] = 8*-8;
global.aerialWidths[tmpId] = 8*40;
global.aerialHeights[tmpId] = 8*30;
global.aerialDamageTypes[tmpId,0] = 1;								
global.aerialDamageModifiers[tmpId,0] = 2.8;					
global.aerialStaggerModifiers[tmpId,0] = 4;			
global.aerialKnockbacks[tmpId,0] = -2;
global.aerialStatusTypes[tmpId,0] = -1;
global.aerialStatusValues[tmpId,0] = 0;	

//aerial class ID lists
//Sword: (0)Basic (1)Slam
aerialSwordId = 0;

//ACTIVE COMBO VARIABLES; WHACKED IN DEFAULTS, GET RID OF THESE
	//[attack1]-[attack2]-[attack3]
	//[0]-[0]-[0]
	//active class: Fists

	//active combo properties
scr_set_combo(0,5);			//slice
scr_set_combo(1,5);			//slice
scr_set_combo(2,5);			//slice
scr_set_combo(3,6);			//smash
scr_set_class("Sword");

//EQUIPMENT & SPELLS
	//Equipments:
		//0:	Crossbow
		//1:	Spells
	//SubTypes:
		//Crossbow:
			//0:	Normal Bolts
			//1:	Flaming Bolts
			//2:	Frozen Bolts
			//3:	Charged Bolts
			//4:	Serrated Bolts
		//Spells:
			//5:	Blaze
			//6:	Frost
			//7:	Spark
			//8:	Leech
			//9:	Osmose
	//Activatables:
		//Crossbow:
			//0: Rope Shot
			//1: Shrapnel Burst
		//Spell:
			//2: Mine
			//3: Shell
			//4: Aura
		
//0: Crossbow
tmpId = 0;
global.offhandNames[tmpId] = "Crossbow";
global.offhandQuickfireSprites[tmpId] = noone;
global.offhandUppercutSprites[tmpId] = spr_player_crossbow_uppercut_body;
global.offhandHoldingSprites[tmpId] = noone;
global.offhandAerialSprites[tmpId] = spr_player_crossbow_aerial_body;
global.offhandBaseProjectiles[tmpId] = obj_crossbow_projectile;
	//subtypes
  var tmpIdTwo = 0;		//0: Normal Bolts
		global.offhandSubtypeNames[tmpIdTwo] = "Normal Bolts";					//Name	
		global.offhandSubtypeDamageTypes[tmpIdTwo] = 1;							//Damage Type (-1:None|0:Slash|1:Blunt|2:Pierce|3:Fire|4:Ice|5:Lightning|6:Arcane|7:Light|8:Dark)
		global.offhandSubtypeDamageModifiers[tmpIdTwo] = 0.3;					//damage modifier, multiplicative
		global.offhandSubtypeStatusTypes[tmpIdTwo] = -1;							//Status Type (-1:None|0:Bleed)
		global.offhandSubtypeStatusValues[tmpIdTwo] = 0;							//Status Value (NEED BASED ON PLAYER STAT IMPLEMENTATION)
		global.offhandSubtypeStaggerModifiers[tmpIdTwo] = 0.2;					//stagger modifier, multiplicative
		global.offhandSubtypeKnockbacks[tmpIdTwo] = 5;							//physics knockback on a heavy stagger attack
		global.offhandSubtypeManaCosts[tmpIdTwo] = 0;							//mana cost per use
		tmpIdTwo++;		//1: Flaming Bolts
		global.offhandSubtypeNames[tmpIdTwo] = "Flaming Bolts";
		global.offhandSubtypeDamageTypes[tmpIdTwo] = 3;
		global.offhandSubtypeDamageModifiers[tmpIdTwo] = 0.2;
		global.offhandSubtypeStatusTypes[tmpIdTwo] = -1;
		global.offhandSubtypeStatusValues[tmpIdTwo] = 0;
		global.offhandSubtypeStaggerModifiers[tmpIdTwo] = 0.2;
		global.offhandSubtypeKnockbacks[tmpIdTwo] = 5;
		global.offhandSubtypeManaCosts[tmpIdTwo] = 2;
		tmpIdTwo++;		//2: Frozen Bolts
		global.offhandSubtypeNames[tmpIdTwo] = "Frozen Bolts";
		global.offhandSubtypeDamageTypes[tmpIdTwo] = 4;
		global.offhandSubtypeDamageModifiers[tmpIdTwo] = 0.3;
		global.offhandSubtypeStatusTypes[tmpIdTwo] = -1;					
		global.offhandSubtypeStatusValues[tmpIdTwo] = 0;				
		global.offhandSubtypeStaggerModifiers[tmpIdTwo] = 0.2;					
		global.offhandSubtypeKnockbacks[tmpIdTwo] = 5;						
		global.offhandSubtypeManaCosts[tmpIdTwo] = 3;
		tmpIdTwo++;		//3: Charged Bolts
		global.offhandSubtypeNames[tmpIdTwo] = "Charged Bolts";
		global.offhandSubtypeDamageTypes[tmpIdTwo] = 5;
		global.offhandSubtypeDamageModifiers[tmpIdTwo] = 0.4;
		global.offhandSubtypeStatusTypes[tmpIdTwo] = -1;				
		global.offhandSubtypeStatusValues[tmpIdTwo] = 0;			
		global.offhandSubtypeStaggerModifiers[tmpIdTwo] = 0.2;	
		global.offhandSubtypeKnockbacks[tmpIdTwo] = 5;					
		global.offhandSubtypeManaCosts[tmpIdTwo] = 4;
		tmpIdTwo++;		//4: Serrated Bolts
		global.offhandSubtypeNames[tmpIdTwo] = "Serrated Bolts";
		global.offhandSubtypeDamageTypes[tmpIdTwo] = 0;
		global.offhandSubtypeDamageModifiers[tmpIdTwo] = 0.3;
		global.offhandSubtypeStatusTypes[tmpIdTwo] = 0;					
		global.offhandSubtypeStatusValues[tmpIdTwo] = 20;				
		global.offhandSubtypeStaggerModifiers[tmpIdTwo] = 0.2;			
		global.offhandSubtypeKnockbacks[tmpIdTwo] = 5;						
		global.offhandSubtypeManaCosts[tmpIdTwo] = 3;
	//activatables
  var tmpIdThree = 0;	//0: Rope Shot
		global.offhandActivatableNames[tmpIdThree] = "Rope Shot";
		global.offhandActivatableDurations[tmpIdThree] = 0.4;
		global.offhandActivatableCooldowns[tmpIdThree] = 0.2;
		tmpIdThree++;	//1: Shrapnel Burst
		global.offhandActivatableNames[tmpIdThree] = "Shrapnel Burst";
		global.offhandActivatableDurations[tmpIdThree] = 0.4;
		global.offhandActivatableCooldowns[tmpIdThree] = 0.2;
		
crossbowId = tmpId;
crossbowSubId = 0;
crossbowSubSize = tmpIdTwo;
crossbowActiveId = 0;
crossbowActiveSize = tmpIdThree;

tmpId++;
global.offhandNames[tmpId] = "Spells"
global.offhandQuickfireSprites[tmpId] = spr_player_spells_quickfire_body;
global.offhandUppercutSprites[tmpId] = spr_player_spells_uppercut_body;
global.offhandHoldingSprites[tmpId] = spr_player_spells_holding_body;
global.offhandAerialSprites[tmpId] = spr_player_spells_aerial_body;
global.offhandBaseProjectiles[tmpId] = obj_spells_projectile;
	//Subtypes
		tmpIdTwo++;		//5: Blaze
		global.offhandSubtypeNames[tmpIdTwo] = "Blaze"
		global.offhandSubtypeDamageTypes[tmpIdTwo] = 3;
		global.offhandSubtypeDamageModifiers[tmpIdTwo] = 0.8;
		global.offhandSubtypeStatusTypes[tmpIdTwo] = -1;					
		global.offhandSubtypeStatusValues[tmpIdTwo] = 0;				
		global.offhandSubtypeStaggerModifiers[tmpIdTwo] = 0.2;			
		global.offhandSubtypeKnockbacks[tmpIdTwo] = 5;	
		global.offhandSubtypeManaCosts[tmpIdTwo] = 4;
		tmpIdTwo++;		//6: Frost
		global.offhandSubtypeNames[tmpIdTwo] = "Frost"
		global.offhandSubtypeDamageTypes[tmpIdTwo] = 4;
		global.offhandSubtypeDamageModifiers[tmpIdTwo] = 1;
		global.offhandSubtypeStatusTypes[tmpIdTwo] = -1;					
		global.offhandSubtypeStatusValues[tmpIdTwo] = 0;				
		global.offhandSubtypeStaggerModifiers[tmpIdTwo] = 0.2;			
		global.offhandSubtypeKnockbacks[tmpIdTwo] = 5;	
		global.offhandSubtypeManaCosts[tmpIdTwo] = 5;
		tmpIdTwo++;		//7: Spark
		global.offhandSubtypeNames[tmpIdTwo] = "Spark"
		global.offhandSubtypeDamageTypes[tmpIdTwo] = 5;
		global.offhandSubtypeDamageModifiers[tmpIdTwo] = 1.2;
		global.offhandSubtypeStatusTypes[tmpIdTwo] = -1;					
		global.offhandSubtypeStatusValues[tmpIdTwo] = 0;				
		global.offhandSubtypeStaggerModifiers[tmpIdTwo] = 0.2;			
		global.offhandSubtypeKnockbacks[tmpIdTwo] = 5;	
		global.offhandSubtypeManaCosts[tmpIdTwo] = 6;
		tmpIdTwo++;		//8: Leech
		global.offhandSubtypeNames[tmpIdTwo] = "Leech"
		global.offhandSubtypeDamageTypes[tmpIdTwo] = 8;
		global.offhandSubtypeDamageModifiers[tmpIdTwo] = 0.7;
		global.offhandSubtypeStatusTypes[tmpIdTwo] = -1;					
		global.offhandSubtypeStatusValues[tmpIdTwo] = 0;				
		global.offhandSubtypeStaggerModifiers[tmpIdTwo] = 0.2;			
		global.offhandSubtypeKnockbacks[tmpIdTwo] = 5;	
		global.offhandSubtypeManaCosts[tmpIdTwo] = 8;
		tmpIdTwo++;		//9: Osmose
		global.offhandSubtypeNames[tmpIdTwo] = "Osmose"
		global.offhandSubtypeDamageTypes[tmpIdTwo] = 6;
		global.offhandSubtypeDamageModifiers[tmpIdTwo] = 1;
		global.offhandSubtypeStatusTypes[tmpIdTwo] = -1;					
		global.offhandSubtypeStatusValues[tmpIdTwo] = 0;				
		global.offhandSubtypeStaggerModifiers[tmpIdTwo] = 0.2;			
		global.offhandSubtypeKnockbacks[tmpIdTwo] = 5;	
		global.offhandSubtypeManaCosts[tmpIdTwo] = 2;
	//activatables
		tmpIdThree++;	//2: Mine
		global.offhandActivatableNames[tmpIdThree] = "Mine";
		global.offhandActivatableDurations[tmpIdThree] = 0.4;
		global.offhandActivatableCooldowns[tmpIdThree] = 0.2;
		tmpIdThree++;	//4: Aura
		global.offhandActivatableNames[tmpIdThree] = "Aura";
		global.offhandActivatableDurations[tmpIdThree] = 0.4;
		global.offhandActivatableCooldowns[tmpIdThree] = 0.2;
		
spellId = tmpId;
spellSubId = crossbowSubId+crossbowSubSize;
spellSubSize = tmpIdThree-crossbowSubSize;
spellActiveId = crossbowActiveId+crossbowActiveSize;
spellActiveSize = tmpIdThree-crossbowActiveSize;

//ACTIVE E&S VARIABLES; WHACKED IN DEFAULTS, GET RID OF THESE
global.activeOffhandID = 0;
global.activeOffhandSubtypeID = 0;
global.activeOffhandActivatableID = 0;