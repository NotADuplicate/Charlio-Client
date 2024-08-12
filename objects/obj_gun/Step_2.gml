/// @description Move to correct place
if(initialized) {
	dir = global.players[num].gunDir;
	if(sprite_index == spr_boomerange || sprite_index == spr_melee) {
		image_angle = 0;
		if(dir < 270 && dir > 90)
			x = global.players[num].x+14*global.players[num].scale;
		else
			x = global.players[num].x-14*global.players[num].scale;
		 y = global.players[num].y;
		 image_yscale = scale;
		 image_xscale = scale*sign(global.players[num].image_xscale)*-1;
	}
	else {		
		y = global.players[num].y+10;
		image_yscale = scale;
		if(dir < 270 && dir > 90)  {
			image_xscale = -scale;
			image_angle = dir+180;
		}
		else {
			image_xscale = scale;
			image_angle = dir;
		}
	
		if(sprite_index == spr_pistol || sprite_index == spr_biggun || sprite_index == spr_shotgun || sprite_index == spr_chargeGun) {
			x = global.players[num].x+6*sign(image_xscale)*global.players[num].scale;
			if(dir > 20 && dir < 160)
				depth = 2;
			else
				depth = 0;
		}
		else {
			x = global.players[num].x-6*sign(image_xscale)*global.players[num].scale;
			depth = 0;
		}
	}
}