/// @description Get all enemies and damage them
enemiesHit = ds_list_create();

with(oEnemyServantGuard) {
     if (place_meeting(x, y, other.id)) {
          ds_list_add(other.enemiesHit, id);
     }
}

for (i = 0; i < ds_list_size(enemiesHit); i++)
{
	enemy = ds_list_find_value(enemiesHit, i);
	with (enemy) { 
		scrEnemyApplyHit(other.damage); 
		instance_create_depth(x, y - 5, -100, oImpactLight);
	}
}
scrCameraScreenShake(10);
event_user(0);