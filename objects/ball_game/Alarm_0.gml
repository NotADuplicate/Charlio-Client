/// @description Send x and y
if(instance_exists(ball_player) && ball_player.spectating == false) {
    /*buffer_seek(buffer, buffer_seek_start, 0);
    buffer_write(buffer, buffer_u8, 3);
    buffer_write(buffer, buffer_u8, ball_player.num);
    buffer_write(buffer, buffer_u16, ball_player.x);
    buffer_write(buffer, buffer_u16, ball_player.y);
    network_send_packet(socket, buffer, buffer_tell(buffer));*/
	
	
/*var data = ds_map_create();
		data[? "eventName"] = "Player Update"
		data[? "Num"] = ball_player.num
		data[? "X"] = ball_player.x
		data[? "Y"] = ball_player.y
		buffer_seek(buffer,buffer_seek_start,0)
		buffer_write(buffer,buffer_text,json_encode(data))
		network_send_packetudp(socket,buffer,buffer_tell(buffer))*/
		node_send(buffer,"eventName","Player Update","Num",ball_player.num,"X",ball_player.x,"Y",ball_player.y,"Dir",point_direction(ball_player.x,ball_player.y,mouse_x,mouse_y))
}

alarm[0] = 1;