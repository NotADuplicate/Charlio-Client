/// @description send damage passive
with(ball_game) {
	node_send(buffer,"eventName","Status","Target",ball_player.num,"Status Num", 36)
}
charges--;
if(charges < 1)
	instance_destroy()