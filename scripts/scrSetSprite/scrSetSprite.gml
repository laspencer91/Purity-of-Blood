/// @function scrSetSprite(sprite_index, image_speed, image_index, force_index_change)
/// @description Set the target sprite with the targeted animation speed.

// This script is used to simplify the process of only changing the sprite in certain conditions.
// On a State change we only want to change the sprite when we are not already on that sprite.
// This script also allows an optional 4th parameter that will allow forcing the index to a certain
// value even if the sprite is not changing. This is useful in instances where one sprite contains
// individual images that you do not want animating.

var sprite = argument[0];               // The sprite to change to
var iSpeed = argument[1];               // The image_speed to use
var iIndex = argument[2];               // The image index to set the sprite to at initial change
var forceIndexChange = false;           // (Optional) We can force the image_index to change even
                                        //            when the sprite does not need to
if (argument_count == 4)
	forceIndexChange = argument[3];
	
if (sprite_index != sprite || forceIndexChange == true)
{
	sprite_index = sprite;
	image_index  = iIndex;
}

if (image_speed != iSpeed)
{
	image_speed  = iSpeed;
}