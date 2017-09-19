///scr_emit_light(resolution,lightSize,colour,alpha)
resolution = argument0;
lightSize = argument1;
colour = argument2;
alpha = argument3;

///// INITIALIZE \\\\\
if !variable_instance_exists(id,"occlusionMap") occlusionMap = 0;
if !variable_instance_exists(id,"shadowMap1D") shadowMap1D = 0;
if !variable_instance_exists(id,"lightSurface") lightSurface = 0;

///// MAKE OCCLUSION \\\\\
if !surface_exists(occlusionMap) occlusionMap = surface_create(lightSize,lightSize);

///set
surface_resize(occlusionMap,lightSize,lightSize)
surface_set_target(occlusionMap);
draw_clear_alpha(c_white,0);
shader_set(shd_black);

	tileMapA = layer_tilemap_get_id(layer_get_id("tiles_foreground_a"));
	tileMapB = layer_tilemap_get_id(layer_get_id("tiles_foreground_b"));
	tileMapC = layer_tilemap_get_id(layer_get_id("tiles_foreground_c"));
	draw_tilemap(tileMapA,-x+lightSize/2,-y+lightSize/2);
	draw_tilemap(tileMapB,-x+lightSize/2,-y+lightSize/2);
	draw_tilemap(tileMapC,-x+lightSize/2,-y+lightSize/2);

shader_reset();
surface_reset_target();
///reset

///// MAKE 1D SHADOW MAP \\\\\
if !surface_exists(shadowMap1D) shadowMap1D = surface_create(lightSize,1);

///set
surface_resize(shadowMap1D,lightSize,1)
surface_set_target(shadowMap1D);
draw_clear_alpha(c_white,0);
shader_set(shd_cast_shadows);

reso = shader_get_uniform(shd_cast_shadows,"resolution");
shader_set_uniform_f(reso,resolution,resolution);
size= shader_get_uniform(shd_cast_shadows,"lightSize");
shader_set_uniform_f(size,lightSize,lightSize);

draw_surface(occlusionMap,0,0);

shader_reset();
surface_reset_target();
///reset

///// RENDER LIGHT ONTO A SURFACE \\\\\
if !surface_exists(lightSurface) lightSurface = surface_create(lightSize,lightSize);

///set
surface_resize(lightSurface,lightSize,lightSize)
surface_set_target(lightSurface);
draw_clear_alpha(c_white,0);
shader_set(shd_render_light);

reso = shader_get_uniform(shd_render_light,"resolution");
shader_set_uniform_f(reso,resolution,resolution);
size= shader_get_uniform(shd_render_light,"lightSize");
shader_set_uniform_f(size,lightSize,lightSize);

draw_surface_stretched(shadowMap1D,0,0,lightSize,lightSize);

shader_reset();
surface_reset_target();
///reset

///// DRAW SURFACE \\\\\
surface_set_target(obj_controller.light);
//surface_set_target(occlusionMap);
shader_set(shd_blur);
gpu_set_blendmode(bm_normal);

radius = 6
size = shader_get_uniform(shd_blur,"size");
shader_set_uniform_f(size,lightSize,lightSize,radius);
draw_surface_ext(lightSurface,x-lightSize/2,y+lightSize/2,1,-1,0,colour,alpha);

gpu_set_blendmode(bm_normal);
shader_reset();
surface_reset_target();

//surface_free(occlusionMap);
//surface_free(shadowMap1D);
//surface_free(lightSurface);