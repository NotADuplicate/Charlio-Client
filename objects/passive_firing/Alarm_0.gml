/// @description get faster shooting
global.shooting += .5;
perc = string(round((0.5/global.shooting)*100)) + "%"
str = "Increase fire rate by" + " " + perc
with(ball_game) {
    /*buffer_seek(buffer, buffer_seek_start, 0);
    buffer_write(buffer, buffer_u8, 11);
    buffer_write(buffer, buffer_u8, ball_player.num);
    buffer_write(buffer, buffer_u8, 9);
    network_send_packet(socket, buffer, buffer_tell(buffer));*/
	node_send(buffer,"eventName","Status","Target",ball_player.num,"Status Num",9)
}
if(global.shooting  = 2.5) 
	instance_destroy();
global.statSource[3,5] += 2;