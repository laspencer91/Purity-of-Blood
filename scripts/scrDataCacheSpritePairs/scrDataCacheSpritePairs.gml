
playerSpriteLinks = ds_map_create();

// Normal State Sprite (non attacking)
ds_map_add(playerSpriteLinks, sPlayerBodyRun           , sPlayerWeaponRun);
ds_map_add(playerSpriteLinks, sPlayerBodyIdle          , sPlayerWeaponIdle);
ds_map_add(playerSpriteLinks, sPlayerBodyAirborne      , sPlayerWeaponAirborne);
ds_map_add(playerSpriteLinks, sPlayerBodyLanding       , sPlayerWeaponLanding);

// Attacking sprites and weapon pairs
ds_map_add(playerSpriteLinks, sPlayerBodyGut           , sPlayerWeaponGut);
ds_map_add(playerSpriteLinks, sPlayerBodyBurst         , sPlayerWeaponBurst);
ds_map_add(playerSpriteLinks, sPlayerBodySlice         , sPlayerWeaponSlice);
ds_map_add(playerSpriteLinks, sPlayerBodySlice2        , sPlayerWeaponSlice2);
ds_map_add(playerSpriteLinks, sPlayerBodySmash         , sPlayerWeaponSmash);
ds_map_add(playerSpriteLinks, sPlayerBodyAerialSlash   , sPlayerWeaponAerialSlash);
ds_map_add(playerSpriteLinks, sPlayerBodyAerialSlash2  , sPlayerWeaponAerialSlash2);
ds_map_add(playerSpriteLinks, sPlayerBodyAerialFinish  , sPlayerWeaponAerialFinish);

// Attakcing weapon and effect pairs
ds_map_add(playerSpriteLinks, sPlayerWeaponGut         , sPlayerEffectGut);
ds_map_add(playerSpriteLinks, sPlayerWeaponBurst       , sPlayerEffectBurst);
ds_map_add(playerSpriteLinks, sPlayerWeaponSlice       , sPlayerEffectSlice);
ds_map_add(playerSpriteLinks, sPlayerWeaponSlice2      , sPlayerEffectSlice2);
ds_map_add(playerSpriteLinks, sPlayerWeaponSmash       , sPlayerEffectSmash);
ds_map_add(playerSpriteLinks, sPlayerWeaponAerialSlash , sPlayerEffectAerialSlash);
ds_map_add(playerSpriteLinks, sPlayerWeaponAerialSlash2, sPlayerEffectAerialSlash2);
ds_map_add(playerSpriteLinks, sPlayerWeaponAerialFinish, sPlayerEffectAerialFinish);
