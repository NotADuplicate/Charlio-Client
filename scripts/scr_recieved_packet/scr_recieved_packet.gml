function scr_recieved_packet() {
	var buffer = argument[0];
	message_id = buffer[? "eventName"]

	switch(global.game) {
	    case 0:
	        if(message_id == "Start Game") {
	            newgame = "Ball"
	            if(instance_exists(inst_game)) { //delete the old game object to make way for the new
	                instance_destroy(inst_game);
	            }
	            global.game = newgame; 
				scr_ball_receive(buffer)
	        }
			else if(message_id == "Num") {//recieve num and send name
				num = buffer[? "Number"]
				obj_client.index = int64(num);
				obj_client.alarm[6] = 1; //send packet
				obj_client.ping = current_time-obj_client.pingSet
				global.connected = true;
				obj_client.pingTime = 0;
				show_debug_message("Client Connected")
		        /*buffer_seek(buffer,buffer_seek_start,0);
		        buffer_write(buffer,buffer_u8,1);
				//buffer_write(buffer,buffer_u8,num);
		        buffer_write(buffer,buffer_string,global.name);
		        network_send_packet(obj_client.socket,buffer,buffer_tell(buffer));*/

			}
			else if(message_id == "Ping") {
				obj_client.ping = current_time-obj_client.pingSet
				show_debug_message(obj_client.ping)
			}
			else if(message_id = "Player UI") {
				num = buffer[? "Number"];
				team = buffer[? "Team"];
				ready = buffer[? "Ready"];
				name = buffer[? "Name"];
				scr_createPlayer(num,name,team,ready);
			}
			else if(message_id = "Player Disconnect") {
				num = buffer[? "Number"];
				with(obj_playerUI) {
					if(num == other.num) {
						instance_destroy();
					}
				}
			}
	    break;
	    case "Shooter":
	        scr_shooter_receive(buffer);
	    break;
	    case "Pirates":
	        scr_pirate_receive(buffer);
	    break;
		case "Standoff":
			scr_standoff_receive(buffer);
		break;
		case "Trump":
			scr_trump_receive(buffer);
		break;
		case "Jumper":
			scr_jumper_receive(buffer);
		break;
		case "Switcheroo":
			scr_switch_receive(buffer);
		break;
		case "BlockFight":
			scr_block_receive(buffer);
		break;
		case "Ball":
			scr_ball_receive(buffer);
		break;
		case "Karts":
			scr_karts_receive(buffer)
		break;
		case "DrawShoot":
			scr_draw_receive(buffer);
		break;
		case "Mafia":
			scr_mafia_receive(buffer);
		break;
		case "Quantum":
			scr_button_receive(buffer);
		break;
	}
	/*
	var message_id = buffer_read(buffer, buffer_u8);
	switch(message_id) {
	    case 0:
	        global.game = buffer_read(buffer,buffer_string);
	    break;
	}


/* end scr_recieved_packet */
}
