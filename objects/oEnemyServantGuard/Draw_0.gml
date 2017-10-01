/// @description Insert description here
// You can write your code in this editor
draw_self();

if (flash > 0)
{
	flash -= 0.1;
	gpu_set_blendmode(bm_add)
	shader_set(shd_flash);
	shader_params = shader_get_uniform(shd_flash, "alpha");
	shader_set_uniform_f(shader_params, flash);
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	shader_reset();
	gpu_set_blendmode(bm_normal)
}

/* DRAW sight lines
var a = sightDist;
leng = a / (sin(degtorad(90 - fov)))

draw_line(x, y, x + lengthdir_x(leng, fov), y + lengthdir_y(leng, fov))
draw_line(x, y, x + lengthdir_x(leng, 360 - fov), y + lengthdir_y(leng, 360 -fov))
*/