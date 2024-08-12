// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_move(argument0,argument1){
	if(ball_player.throwTime == 0) {
		dir = argument0;
		pushSpd = argument1*global.pushSpd*0.8;
		if(ball_player.stasis) {
			ball_player.stasisx += lengthdir_x(pushSpd,dir)*0.7
			ball_player.stasisy += lengthdir_y(pushSpd,dir)*0.7
		}
		else {
			with(ball_player) {
				if(inversion <= 0)
					motion_add(argument[0],argument[1]*global.pushSpd)
				else {
					motion_add(argument[0]+180,argument[1]*global.pushSpd)
					inversion -= argument[1]*2;
					if(inversion < 0)
						inversion = 0;
				}
			}
		}
	}
}