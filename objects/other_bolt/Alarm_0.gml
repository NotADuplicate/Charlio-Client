/// @description Shoot
speed = 75;
alarm[1] = 13;
alarm[3] = 1; //dont go through walls
alarm[4] = 4; //double damage
image_xscale = 2;
image_yscale = 2;
sprite_index = big_bullet;
dmg = max(30,round(charge/1.4))*.5
dmgRamp = dmg/4;
