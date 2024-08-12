/// @description Decide if seen
if(initialized) {
	if(global.teamNum[num] == global.teamNum[ball_player.num] || global.players[num].seen == false) {
		draw_self();
	}
}