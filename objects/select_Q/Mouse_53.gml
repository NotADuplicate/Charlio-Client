/// @description If clicked then swap out Q
if(global.shop && global.shopState == "Abilities") {
	xp = camera_get_view_x(view_camera[0])+obj_shop.xp+x;
	yp = camera_get_view_y(view_camera[0])+obj_shop.yp+y;
	if(mouse_x < xp + 16 && mouse_x > xp - 16 && mouse_y < yp + 16 && mouse_y > yp-16) {

		if(global.utility != global.Q && global.utility != global.space && global.utility != global.right) {
			if(global.Q == 0) {
				global.leveled--;
			} else {
				if(global.free > 0)
					global.leveled--;
				else
					global.free = 60;
			}
			if(global.leveled = -1) {
				global.leveled = 0;
			} else {
				global.Q = global.utility
				with(ball_game) {
				    /*buffer_seek(buffer, buffer_seek_start, 0);
				    buffer_write(buffer, buffer_u8, 33);
				    buffer_write(buffer, buffer_u8, ball_player.num);
					buffer_write(buffer, buffer_u8, 2);
				    buffer_write(buffer, buffer_u16, scr_ability_sprite(global.Q));
				    network_send_packet(socket, buffer, buffer_tell(buffer));*/
					node_send(buffer,"eventName","Loadout","Num",ball_player.num,"Slot",2,"Ability",scr_ability_sprite(global.Q))
				}
				audio_play_sound(snd_buy,1,false)
				i = 0;
				repeat(9) {
					global.statSource[0,i] = variable_global_get(global.stat[i])
					i++;
				}
			}
		}

	}
}