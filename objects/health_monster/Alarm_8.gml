/// @description Be killed by the player and give the buff
	if(global.jungle)
		ball_player.regenRate = 3;
	else
		ball_player.regenRate = 2;
	obj_junglePass.regen = 1800;