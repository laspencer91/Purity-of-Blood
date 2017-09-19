draw_self();

if phase == "scream" draw_sprite_ext(spr_bloodHound_scream_effect,image_index,x,y,facing,1,0,c_white,1);
else if phase == "walking" draw_sprite_ext(spr_bloodHound_walk_effect,image_index,x,y,facing,1,0,c_white,1);
else if phase == "attack2" && subPhase == "attacking" draw_sprite_ext(spr_bloodHound_attack2_effect,image_index,x,y,facing,1,0,c_white,1);
else if phase == "attack3" && subPhase == "attacking" draw_sprite_ext(spr_bloodHound_attack3_effect,image_index,x,y,facing,1,0,c_white,1);
else if phase == "attack4" && subPhase == "end" draw_sprite_ext(spr_bloodHound_attack4_land_effect,image_index,x,y,facing,1,0,c_white,1);