/// @description Insert description here
// You can write your code in this editor
if(oil == 0) {
	if(speed > 0.75) {
		speed -= 0.25
		if(speed < 0.75 && global.lastTouch) {
			with(ball_game) {
				node_send(buffer,"eventName","Ball Pos","X",obj_bigBall.x,"Y",obj_bigBall.y)
			}
		}
	}
	else
		speed = 0;
}
	
//hspeed += .1*global.garren

//Horizontal bounce
if(place_meeting(x + hspeed, y, ball_wall)) {
    direction = -direction + 180;
	hspeed *= .6
}

//Vertical bounce
if(place_meeting(x, y + vspeed, ball_wall)) {
    direction = -direction;
	vspeed *= .6
}
	
	
	
///End game
if(ball_game.started) {
	if(x < 0) {
		ending = instance_create(x,y,obj_ending);
		ending.lore = "Right team wins!";
	}
	if((x > 6500) || (x > 2665 && global.gameMode == "Rumble")) {
		ending = instance_create(x,y,obj_ending);
		ending.lore = "Left team wins!";
	}
}
else if(global.gameMode != "Rumble"){
	x = 3000;
	y = -100;
}