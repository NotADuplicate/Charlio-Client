/// @description get more mana
global.maxAmmo += 4
global.ammo = global.maxAmmo;
global.statSource[3,0] += 2;
			with(ball_game) {
				node_send(buffer,"eventName","Ammo","Num",ball_player.num,"Ammo",global.ammo)
			}