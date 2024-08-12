/// @description send damage passive
global.statSource[3,5] += 2;
with(ball_game) {
	node_send(buffer,"eventName","Status","Target",ball_player.num,"Status Num",11)
}
if(ball_player.atk > 1.5)
	instance_destroy();