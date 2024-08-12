/// @description Tick index depending on team
/*index -= 2*global.teamNum[other.num];
if(abs(index > 20)) {
	if(sign(index) == global.teamNum[num]) { //be collected by friendly team
		with(ball_game) {
		    buffer_seek(buffer, buffer_seek_start, 0);
		    buffer_write(buffer, buffer_u8, 11);
		    buffer_write(buffer, buffer_u8, other.num);
		    buffer_write(buffer, buffer_u8, 51);
		    network_send_packet(socket, buffer, buffer_tell(buffer));
		}
	}
	else { //be collected by enemy team and provide XP
		with(ball_game) {
		    buffer_seek(buffer, buffer_seek_start, 0);
		    buffer_write(buffer, buffer_u8, 11);
		    buffer_write(buffer, buffer_u8, other.num);
		    buffer_write(buffer, buffer_u8, 52);
		    network_send_packet(socket, buffer, buffer_tell(buffer));
		}
	}
}