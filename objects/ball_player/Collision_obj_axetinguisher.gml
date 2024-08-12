/// @description Crit on fire, slam in direction its swinging
if(global.teamNum[other.num] != global.teamNum[num] && other.active) {
	scr_player_move(point_direction(other.x,other.y,x,y)+90,18)
	if(burn > 0)
		scr_damage(170,other.num,false);
	else
		scr_damage(50,other.num,false);
	other.active = false
}