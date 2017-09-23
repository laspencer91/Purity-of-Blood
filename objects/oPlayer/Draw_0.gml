/// @description Draw Player

// Draw the player
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha); 

// This sprite index is body. If a linked weapon sprite is found in our map then
// we will draw that sprite and then check if there is a linked effect sprite to
// that weapon. If so, we draw that effect as well.
// THE KEY IS A SPRITE_INDEX and the value is a corresponding SPRITE_INDEX

if (ds_map_exists(DataCache.playerSpriteLinks, sprite_index))
{
	var weaponSprite = ds_map_find_value(DataCache.playerSpriteLinks, sprite_index);
	draw_sprite_ext(weaponSprite, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha); 
	
	if (ds_map_exists(DataCache.playerSpriteLinks, weaponSprite))
	{
		var effectSprite = ds_map_find_value(DataCache.playerSpriteLinks, weaponSprite);
		draw_sprite_ext(effectSprite, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha); 
	}
}
