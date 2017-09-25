/// @description Update Key Presses For Step
if gamepad_is_connected(0)
{
	gamepad_set_axis_deadzone(0,0.3);
	//Left stick axis
	moveInputH = gamepad_axis_value(0, gp_axislh);
	moveInputV = gamepad_axis_value(0, gp_axislv);
	
	//Right stick axis
	targetInputH = gamepad_axis_value(0, gp_axisrh);
	targetInputV = gamepad_axis_value(0, gp_axisrv);
	
	//face buttons
	aInput = gamepad_button_check_pressed(0,gp_face1);
	bInput = gamepad_button_check_pressed(0,gp_face2);
	xInput = gamepad_button_check_pressed(0,gp_face3);
	yInput = gamepad_button_check_pressed(0,gp_face4);
	aInputHeld = gamepad_button_check(0,gp_face1);
	bInputHeld = gamepad_button_check(0,gp_face2);
	xInputHeld = gamepad_button_check(0,gp_face3);
	yInputHeld = gamepad_button_check(0,gp_face4);
	aInputReleased = gamepad_button_check_released(0,gp_face1);
	bInputReleased = gamepad_button_check_released(0,gp_face2);
	xInputReleased = gamepad_button_check_released(0,gp_face3);
	yInputReleased = gamepad_button_check_released(0,gp_face4);
	
	//D-Pad
	dLInput = gamepad_button_check_pressed(0,gp_padl);
	dRInput = gamepad_button_check_pressed(0,gp_padr);
	dUInput = gamepad_button_check_pressed(0,gp_padu);
	dDInput = gamepad_button_check_pressed(0,gp_padd);
	dLInputHeld = gamepad_button_check(0,gp_padl);
	dRInputHeld = gamepad_button_check(0,gp_padr);
	dUInputHeld = gamepad_button_check(0,gp_padu);
	dDInputHeld = gamepad_button_check(0,gp_padd);
	
	//Stick presses
	rsInput = gamepad_button_check_pressed(0,gp_stickr);
	rsInputHeld = gamepad_button_check(0,gp_stickr);
	
	startInput = gamepad_button_check_pressed(0,gp_start);
	
	horizontalInput     = moveInputH;
	jumpKeyPressed      = aInput;
	jumpKeyReleased     = aInputReleased
	jumpKeyDown         = aInputHeld
	meleeButtonPressed  = xInput
	fallKeyDown			= moveInputV > 0.5;
}
// Keyboard inputs
else
{
	jumpKeyPressed      = keyboard_check_pressed(jumpKeyAssign);
	jumpKeyReleased     = keyboard_check_released(jumpKeyAssign);
	jumpKeyDown         = keyboard_check(jumpKeyAssign);
	horizontalInput     = keyboard_check(vk_right) - keyboard_check(vk_left);
	meleeButtonPressed  = keyboard_check_pressed(meleeKeyAssign);
	fallKeyDown			= keyboard_check(downKeyAssign);
}