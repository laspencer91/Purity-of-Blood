spritePair[1, 1] = 0;

var bodyPrefix   = "sPlayerBody";
var weaponPrefix = "sPlayerWeapon";

spritePair[Action.running, SpriteType.body] = sPlayerBodyRun;
spritePair[Action.idle   , SpriteType.body] = sPlayerBodyIdle;

// Sets corresponding weapon sprite using assigned body name. Both the body and the weapon should be 
// prefixed with the set variable.
for (i = 0; i < array_length_1d(spritePair); i++)
{
	var bodySpriteName = sprite_get_name(spritePair[i, SpriteType.body]);
	var changedString  = string_replace(bodySpriteName, bodyPrefix, weaponPrefix);
	spritePair[i, SpriteType.weapon] = asset_get_index(changedString);
}

global.spritePair = spritePair;