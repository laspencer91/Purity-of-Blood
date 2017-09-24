/// @description Update Key Presses For Step

jumpKeyAssign = ord("Z");
meleeKeyAssign = ord("X");

jumpKeyPressed = keyboard_check_pressed(jumpKeyAssign);
jumpKeyReleased = keyboard_check_released(jumpKeyAssign);
jumpKeyDown     = keyboard_check(jumpKeyAssign);
horizontalInput = keyboard_check(vk_right) - keyboard_check(vk_left);
meleeButtonPressed = keyboard_check(meleeKeyAssign);