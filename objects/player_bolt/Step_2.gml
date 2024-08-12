/// @description Broadcast position and angle
if(instance_exists(obj_player)) {
    dir = point_direction(obj_player.x,obj_player.y,mouse_x,mouse_y);
    x = round(obj_player.x + lengthdir_x(30,dir));
    y = round(obj_player.y + lengthdir_y(30,dir));
	with(ball_game) {
		node_send(buffer,"eventName","Bolt dir", "Num", ball_player.num, "Dir", other.dir)
	}
}
if(charge < 150) 
	charge += global.shooting;
else {
	instance_destroy();
	global.slow = 1;
	    x = round(obj_player.x + lengthdir_x(30,dir));
	    y = round(obj_player.y + lengthdir_y(30,dir));
		with(ball_game) {
		node_send(buffer,"eventName","Bolt dir", "Num", ball_player.num, "Dir", 1000)
		}
}