/// @description Insert description here
// You can write your code in this editor
if(other.inv == 0) {
	if(other.broken)
		dmg = speed*2;
	else
		dmg = speed;
}
other.inv = 20;
if(other.hp > dmg) {
	direction += 180;
	speed = speed/2;
}
if(other.invin == 0 && obj_client.index == global.lastTouch && speed > 0.5) {
	other.hp -= dmg
	turret = other;
	other.invin = 10;
	if(other.hp > 0) {
		if(obj_client.index == global.lastTouch) {
			with(ball_game) {
			    /*buffer_seek(buffer, buffer_seek_start, 0);
			    buffer_write(buffer, buffer_u8, 10);
				buffer_write(buffer,buffer_u8, 1);
				obj_bigBall.direction = round(obj_bigBall.direction);
				obj_bigBall.speed = round(obj_bigBall.speed);
				buffer_write(buffer,buffer_u16,obj_bigBall.direction);
				buffer_write(buffer,buffer_u8,obj_bigBall.speed);
				network_send_packet(socket, buffer, buffer_tell(buffer));*/
				
				//send tower hp
				node_send(buffer,"eventName","Tower Damage","Num",other.turret.num,"Hp",other.turret.hp)
			}
		}
	}
}