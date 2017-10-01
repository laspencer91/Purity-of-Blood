/// @description Bloom Shader
shader_set(shd_bloom);
blur = shader_get_uniform(shd_bloom, "blurSize");
intensity = shader_get_uniform(shd_bloom, "intensity");
shader_set_uniform_f(blur, 1/512);
shader_set_uniform_f(intensity, 0.08);
draw_surface(application_surface, 0, 0);
shader_reset();