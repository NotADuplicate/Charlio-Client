/// @description Die and give buff

	if(obj_junglePass.dmg == 0) {	
		with(ball_game) {
			node_send(buffer,"eventName","Status","Target",ball_player.num,"Status Num", 11)
		}
		if(global.jungle) {
			with(ball_game) {
				node_send(buffer,"eventName","Status","Target",ball_player.num,"Status Num", 11)
			}
		}
	}
	obj_junglePass.dmg = 1800;