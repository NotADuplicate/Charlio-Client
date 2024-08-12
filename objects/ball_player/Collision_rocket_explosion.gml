/// @description Knockback
if(other.player) {
	scr_player_move(point_direction(other.x,other.y,x,y),25);
	scr_damage(40,other.num,false);
	if(global.screenShake < 6)
		global.screenShake = 6;
	if(other.num == num) {
				if(global.right == "Rocket")
					global.rightCool = 0.5;
				if(global.space == "Rocket")
					global.spaceCool = 0.5;
				if(global.Q == "Rocket")
					global.QCool = 0.5;
				if(global.R == "Rocket")
					global.RCool = 0.5;
	}
	other.player = false;
}