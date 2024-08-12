/// @description send damage passive
with(ball_game) {
    /*buffer_seek(buffer, buffer_seek_start, 0);
    buffer_write(buffer, buffer_u8, 11);
    buffer_write(buffer, buffer_u8, ball_player.num);
    buffer_write(buffer, buffer_u8, 30);
    network_send_packet(socket, buffer, buffer_tell(buffer));*/
	node_send(buffer,"eventName","Status","Target",ball_player.num,"Status Num",30)
}
	instance_destroy();