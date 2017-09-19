with all
{
	if object_index != obj_main_menu_controller instance_destroy();
}

selection = 0;

//menu_title[0, 0] = "Start"
menu_title[0, 0] = "Arena"
menu_title[0, 1] = "Exit"

//initialize
current_menu = "title menu";
current_menu_options = menu_title;
sX = 0;
sY = 0;
moveTimer = 0;
global.spawning = 0;
global.pauseSplash = noone;

global.vsync = 1;
display_reset(0,global.vsync);
show_debug_overlay(0);
window_set_fullscreen(1);
window_set_cursor(cr_none);