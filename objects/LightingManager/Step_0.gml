/// @description Update Surface

if (surface_exists(darkSurface)) 
{
    surface_set_target(darkSurface);

    // The following three lines set the 'dark' overlay
    draw_set_color(c_black);
    draw_set_alpha(darkness); 
    draw_rectangle(0, 0, room_width, room_height, 0);

    gpu_set_blendmode(bm_subtract);
    draw_set_color(c_white);
    
	if (instance_exists(oLightParent))
	    with (oLightParent)
	        draw_sprite_ext(sLight, -1, x, y, radius, radius, 0, c_white, 1);
    
    // Reset all of your draw stuff
    gpu_set_blendmode(bm_normal);
    draw_set_alpha(1);
    surface_reset_target();
} else {
    // Again, surfaces can be a pain
    // Create a new one if there were issues
    darkSurface = surface_create(room_width, room_height);
    surface_set_target(darkSurface);
    draw_clear_alpha(c_black, 0);
    surface_reset_target();
}