/// @description Finite State Machine

switch (actionState)
{
	case State.idle:
	scrEnemyServantGuardStateIdle();
	break;
	case State.walking:
	scrEnemyServantGuardStateWalking();
	break;
	case State.attacking:
	scrEnemyServantGuardStateAttacking();
	break;
}