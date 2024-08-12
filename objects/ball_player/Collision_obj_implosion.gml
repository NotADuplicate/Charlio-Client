/// @description Insert description here
// You can write your code in this editor
motion_add(point_direction(x,y,other.x,other.y),.5)
if(speed > 1)
	speed *= .9;
else
	speed = 0;
global.slow = .75;
ball_game.alarm[7] = 3;