/// @description Insert description here
// You can write your code in this editor
if(global.shop && global.shopState == "Abilities") {
	xp = camera_get_view_x(view_camera[0])+obj_shop.xp+x;
	yp = camera_get_view_y(view_camera[0])+obj_shop.yp+y;
	if(mouse_x < xp + 16 && mouse_x > xp - 16 && mouse_y < yp + 16 && mouse_y > yp-16) {
		if(global.utility != global.Q && global.utility != global.space && global.utility != global.right) {
			if(global.space == 0)
				global.leveled--;
			else if(global.free > 0)
				global.leveled--;
			else
				global.free = 60;
			if(global.leveled = -1) {
				global.leveled = 0;
			} else {
				global.space = global.utility
				with(ball_game) {
		node_send(buffer,"eventName","Loadout","Num",ball_player.num,"Slot",3,"Ability",scr_ability_sprite(global.space))
				}
				audio_play_sound(snd_buy,1,false)
				i = 0;
				repeat(9) {
					global.statSource[2,i] = variable_global_get(global.stat[i])
					i++;
				}
			}
		}
	}
}