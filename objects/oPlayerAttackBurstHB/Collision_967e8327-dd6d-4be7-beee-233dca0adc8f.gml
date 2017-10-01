/// @description Insert description here
// You can write your code in this editor

if (ds_list_find_index(enemiesHit, other.id) == -1)
{
	ds_list_add(enemiesHit, other.id);
	scrCameraScreenShake(10);
	with (other) { scrEnemyApplyHit(other.damage); }
}