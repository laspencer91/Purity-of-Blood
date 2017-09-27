
playerSpriteLinks = ds_map_create();

// Normal State Sprite (non attacking)
playerSpriteLinks[? sPlayerBodyRun]				 = sPlayerWeaponRun;
playerSpriteLinks[? sPlayerBodyIdle]			 = sPlayerWeaponIdle;
playerSpriteLinks[? sPlayerBodyAirborne]		 = sPlayerWeaponAirborne;
playerSpriteLinks[? sPlayerBodyLanding]			 = sPlayerWeaponLanding;
playerSpriteLinks[? sPlayerBodyDodging]			 = sPlayerWeaponDodging;

// Attacking sprites and weapon pairs
playerSpriteLinks[? sPlayerBodyGut]				 = sPlayerWeaponGut;
playerSpriteLinks[? sPlayerBodyBurst]			 = sPlayerWeaponBurst;
playerSpriteLinks[? sPlayerBodySlice]			 = sPlayerWeaponSlice;
playerSpriteLinks[? sPlayerBodySlice2]		     = sPlayerWeaponSlice2;
playerSpriteLinks[? sPlayerBodySmash]			 = sPlayerWeaponSmash;
playerSpriteLinks[? sPlayerBodyAerialSlash]		 = sPlayerWeaponAerialSlash;
playerSpriteLinks[? sPlayerBodyAerialSlash2]     = sPlayerWeaponAerialSlash2;
playerSpriteLinks[? sPlayerBodyAerialFinish]	 = sPlayerWeaponAerialFinish;

// Attakcing weapon and effect pairs
playerSpriteLinks[? sPlayerWeaponGut]		     = sPlayerEffectGut;
playerSpriteLinks[? sPlayerWeaponBurst]			 = sPlayerEffectBurst;
playerSpriteLinks[? sPlayerWeaponSlice]			 = sPlayerEffectSlice;
playerSpriteLinks[? sPlayerWeaponSlice2]		 = sPlayerEffectSlice2;
playerSpriteLinks[? sPlayerWeaponSmash]			 = sPlayerEffectSmash;
playerSpriteLinks[? sPlayerWeaponAerialSlash]	 = sPlayerEffectAerialSlash;
playerSpriteLinks[? sPlayerWeaponAerialSlash2]   = sPlayerEffectAerialSlash2;
playerSpriteLinks[? sPlayerWeaponAerialFinish]	 = sPlayerEffectAerialFinish;