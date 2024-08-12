/// @description Killed by player and give buff

	if(obj_junglePass.spd == 0) {
		ball_player.moveSpd++;
		if(global.jungle)
			ball_player.moveSpd++;
	}
	obj_junglePass.spd = 1200;