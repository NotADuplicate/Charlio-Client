/// @description Hook to enemies
if(other.spellShield) 
	instance_destroy();
else if(other != link && hooked = 0) {
	hooked = ball_player;
	alarm[0] = 60;
	with(ball_game) {
		node_send(buffer,"eventName","Targeted Status", "Target", other.num, "User",ball_player.num, "Status Num", 1)
	}
}