///@scr_set_combo(oldSlot,newId)
global.activeComboIDs[argument0] = argument1;
global.activeComboNames[argument0] = global.attackNames[argument1];
global.activeComboAnimations[argument0] = global.attackAnimations[argument1];
global.activeComboAnimationWeps[argument0] = global.attackAnimationWeps[argument1];
global.activeComboAnimationEffects[argument0] = global.attackAnimationEffects[argument1];
global.activeComboDurations[argument0] = global.attackDurations[argument1];
global.activeComboCooldowns[argument0] = global.attackCooldowns[argument1];
global.activeComboMoveStarts[argument0] = global.attackMoveStart[argument1];
global.activeComboMoveDurations[argument0] = global.attackMoveDuration[argument1];
global.activeComboMoceDistancesY[argument0] = global.attackMoveDistancesY[argument1];
global.activeComboMoveDistancesX[argument0] = global.attackMoveDistancesX[argument1];
global.activeComboXOffsets[argument0] = global.attackXOffsets[argument1];
global.activeComboYOffsets[argument0] = global.attackYOffsets[argument1];
global.activeComboWidths[argument0] = global.attackWidths[argument1];
global.activeComboHeights[argument0] = global.attackHeights[argument1];

for (var i = 0; i < array_length_2d(global.attackHitStart,argument1); i++)
{
	global.activeComboHitStarts[argument0,i] = global.attackHitStart[argument1,i];
	global.activeComboHitDurations[argument0,i] = global.attackHitDuration[argument1,i];
	global.activeComboAttackTypes[argument0,i] = global.attackDamageTypes[argument1,i];
	global.activeComboDamageModifiers[argument0,i] = global.attackDamageModifiers[argument1,i];
	global.activeComboStaggerModifiers[argument0,i] = global.attackStaggerModifiers[argument1,i];
	global.activeComboKnockbacks[argument0,i] = global.attackKnockbacks[argument1,i];
	global.activeComboStatusTypes[argument0,i] = global.attackStatusTypes[argument1,i];
	global.activeComboStatusValues[argument0,i] = global.attackStatusValues[argument1,i];
}