/// @description Send name and team
	        /*buffer_seek(buffer,buffer_seek_start,0);
	        buffer_write(buffer,buffer_u8,1);
			buffer_write(buffer,buffer_u8,index);
	        buffer_write(buffer,buffer_string,global.name);
	        network_send_udp(socket,global.serverip,8001,buffer,buffer_tell(buffer))
			
		//if(global.spectator == false) {
			buffer_seek(buffer,buffer_seek_start,0);
	        buffer_write(buffer,buffer_u8,22);
			buffer_write(buffer,buffer_u8,index);
			buffer_write(buffer,buffer_s8,global.teamside);
	        network_send_packet(socket,buffer,buffer_tell(buffer))*/
		//}
		
		/*var data = ds_map_create();
		data[? "eventName"] = "Player Create"
		data[? "Num"] = index
		data[? "Name"] = global.name
		data[? "Team"] = global.teamside
		buffer_seek(buffer,buffer_seek_start,0)
		buffer_write(buffer,buffer_text,json_encode(data))
		network_send_packetudp(socket,buffer,buffer_tell(buffer))*/
		node_send(buffer,"eventName","Player Create","Num", index, "Name", global.name, "Team", global.teamside)