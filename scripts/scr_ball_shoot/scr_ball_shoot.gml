function scr_ball_shoot() {
	if(instance_exists(ball_player)) {
	    dir = point_direction(ball_player.x,ball_player.y,mouse_x,mouse_y);
	    xp = ball_player.x + lengthdir_x(15*ball_player.scale,dir);
	    yp = ball_player.y + lengthdir_y(15*ball_player.scale,dir);
	    buffer = ball_game.buffer;
	    /*buffer_seek(buffer, buffer_seek_start, 0);
	    buffer_write(buffer, buffer_u8, 7); //bullet
	    buffer_write(buffer, buffer_u16, xp);
	    buffer_write(buffer, buffer_u16, yp);
	    buffer_write(buffer,buffer_u16,round(dir));
	    buffer_write(buffer,buffer_u16,global.attack);
	    buffer_write(buffer,buffer_u8,ball_player.num);*/
		/*var data = ds_map_create();
		data[? "eventName"] = "Bullet"
		data[? "Num"] = ball_player.num
		data[? "X"] = xp
		data[? "Y"] = yp
		data[? "Dir"] = dir
		data[? "Obj"] = global.attack
		buffer_seek(buffer,buffer_seek_start,0)
		buffer_write(buffer,buffer_text,json_encode(data))
		network_send_packetudp(socket,buffer,buffer_tell(buffer))*/
		node_send(buffer,"eventName","Bullet","Num",ball_player.num,"X",xp,"Y",yp,"Dir",dir,"Obj",global.attack)
		show_debug_message("Shooting")
		
		
	    //global.ammo--;
	    //network_send_packet(obj_client.socket,buffer,buffer_tell(buffer));
	}



}
