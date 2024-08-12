/// @description Take damage
if(other.num != num) {
	if(poison > 0)
		scr_damage(160,other.num,false);
	else
		scr_damage(80,other.num,false);	
    instance_destroy(other);
	scr_player_move(other.direction,18);
}

