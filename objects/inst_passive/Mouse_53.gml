/// @description Unselect
if(global.shop && global.shopState == "Passives") {
	xp = camera_get_view_x(view_camera[0])+obj_shop.xp+x-1000;
	yp = camera_get_view_y(view_camera[0])+obj_shop.yp+y-4200;
	if(mouse_x < xp + 20 && mouse_x > xp - 20 && mouse_y < yp + 20 && mouse_y > yp-20) {
		
		if(selected == 0) {
			selected = 1
		}
		else if(selected == 1 && global.leveled > 0) {
			global.leveled--;
			alarm[0] = 1;
			with(ball_game) {
				node_send(buffer,"eventName","Loadout","Num",ball_player.num,"Slot",5,"Ability",other.spr)
			}
			audio_play_sound(snd_buy,1,false)
		}
		
	}
	else 
		selected = 0;
	clicked = true;
}

/*if(selected == 1)
	alarm[2] = 2;