/// @description Get stunned and knockedback
if(global.teamNum[other.num] != global.teamNum[num]) {
	scr_player_move(point_direction(other.x,other.y,x,y),8)
	stunNum = other.num
		with(ball_game) {
			node_send(buffer, "eventName", "Targeted Status", "Target", ball_player.num, "User", other.stunNum, "Status Num", 22)
		}
		scr_damage(40,other.num,false)
	global.invincibility = 1;
}