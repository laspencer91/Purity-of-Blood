/// @description Update Key Presses For Step

jumpKeyPressed = keyboard_check_pressed(vk_up);
jumpKeyReleased = keyboard_check_released(vk_up);
jumpKeyDown     = keyboard_check(vk_up);
horizontalInput = keyboard_check(vk_right) - keyboard_check(vk_left);