if (meleeComboEnable)
{
	if (vertState = VertState.grounded)
		scrPlayerStateMeleeAttackGrounded();
	else
		scrPlayerStateMeleeAttackAirborne();
}