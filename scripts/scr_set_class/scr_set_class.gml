switch argument0
{
case "Sword":
	global.activeCounterId = obj_combo_cache.swordCounterId;
	global.activeUpwardsId = obj_combo_cache.swordUpwardsId;
	global.activeDownwardsId = obj_combo_cache.swordDownwardsId;
	global.activeForwardsId = obj_combo_cache.swordForwardsId;
	global.activeBackwardsId = obj_combo_cache.swordBackwardsId;
	global.activeClassIDs = obj_combo_cache.classSwordAttackIDs;
	global.activeClassNum = obj_combo_cache.swordClassId;
	global.activeAerialID = obj_combo_cache.aerialSwordId;
	global.activeComboSlotNumbers = [[1,2],[1,3],[1,3],[1,4]]; // GOTTA CHANGE
	break;
}