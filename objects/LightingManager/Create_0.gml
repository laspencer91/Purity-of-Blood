/// @description Init Lighting
event_inherited();

darkSurface = surface_create(room_width, room_height);
darkness = 0.3;

surface_set_target(darkSurface);
draw_clear_alpha(c_black, 0);

// Reset to application surface
surface_reset_target();


application_surface_draw_enable(false);