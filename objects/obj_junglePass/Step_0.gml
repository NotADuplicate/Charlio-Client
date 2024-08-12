/// @description Passives run out
if(jungle > 0) {//if you have jungle up, everything else stays
	jungle-= (delta_time/50000);
	if(global.dead)
		jungle = 0;
}
else if(garren > 0) {//if you have jungle up, everything else stays
	garren--;
	if(global.dead)
		garren = 0;
}
else {
	if(regen > 0) {
		regen-= (delta_time/50000);
		if(regen < 1 || global.dead) {
			ball_player.regenRate = 1;
			regen = 0;
		}
	}
	if(ammo > 0) {
		ammo-= (delta_time/50000);
		if(ammo < 1 || global.dead) {
			ball_player.ammoRate = 1;
			ammo = 0;
		}
	}
	if(spd > 0) {
		spd-= (delta_time/50000);
		if(spd < 1 || global.dead){
			ball_player.moveSpd = global.baseMove;
			spd = 0;
		}
	}
	if(pwr > 0) {
		pwr-= (delta_time/50000);
		if(pwr < 1 || global.dead){
			with(ball_game) {
				node_send(buffer,"eventName","Status","Target",ball_player.num,"Status Num", 27)
			}
			if(global.jungle) {
				with(ball_game) {
					node_send(buffer,"eventName","Status","Target",ball_player.num,"Status Num", 27)
				}
			}
			pwr = 0;
		}
	}
	if(dmg > 0) {
		dmg-= (delta_time/50000);
		if(dmg < 1 || global.dead){
			with(ball_game) {
				node_send(buffer,"eventName","Status","Target",ball_player.num,"Status Num", 26)
			}
			if(global.jungle) {
				with(ball_game) {
					node_send(buffer,"eventName","Status","Target",ball_player.num,"Status Num", 26)
				}
			}
			dmg = 0;
		}
	}
}