/// @description Start typing
if(global.typing) {
	global.typing = false;
		    /*buffer_seek(buffer, buffer_seek_start, 0);
		    buffer_write(buffer, buffer_u8, 36); //message
		    buffer_write(buffer,buffer_u8,ball_player.num);
			buffer_write(buffer,buffer_string,keyboard_string);
		    network_send_packet(obj_client.socket,buffer,buffer_tell(buffer));*/
			node_send(buffer, "eventName","Message","Num",ball_player.num,"Message",keyboard_string)
}
else {
	global.typing = true;
	keyboard_string = ""
}