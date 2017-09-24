/// @description Update Key Presses For Step

jumpKeyPressed      = keyboard_check_pressed(jumpKeyAssign);
jumpKeyReleased     = keyboard_check_released(jumpKeyAssign);
jumpKeyDown         = keyboard_check(jumpKeyAssign);
horizontalInput     = keyboard_check(vk_right) - keyboard_check(vk_left);
meleeButtonPressed  = keyboard_check_pressed(meleeKeyAssign);
fallKeyDown			= keyboard_check(downKeyAssign);