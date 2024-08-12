/// @description Be killed by player and give buff

	if(obj_junglePass.pwr == 0) {
		with(ball_game) {
			node_send(buffer,"eventName","Status","Target",ball_player.num,"Status Num", 23)
		}
		if(global.jungle) {
			with(ball_game) {
				node_send(buffer,"eventName","Status","Target",ball_player.num,"Status Num", 23)
			}
		}
	}
	obj_junglePass.pwr = 1800;