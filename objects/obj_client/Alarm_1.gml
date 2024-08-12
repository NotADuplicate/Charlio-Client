/*//Send target message to the one who killed 
    buffer_seek(buffer, buffer_seek_start, 0);
    buffer_write(buffer, buffer_u8, 4); //kill target
    buffer_write(buffer, buffer_u8, target);
    network_send_packet(socket,buffer,buffer_tell(buffer));

/* */
///Send message saying who died
///Send target message to the one who killed 
    /*buffer_seek(buffer, buffer_seek_start, 0);
    buffer_write(buffer, buffer_u8, 5); //kill all instances of that player
    buffer_write(buffer, buffer_u8, dead);
    buffer_write(buffer, buffer_u8, killer);
	buffer_write(buffer,buffer_bool,global.teamside);
    network_send_packet(socket,buffer,buffer_tell(buffer));*/
	show_message("Client alarm 1 got triggered!")

/* */
/*  */
