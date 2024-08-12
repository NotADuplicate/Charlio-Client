/// @description Heal allies and damage enemies
var heals = scr_ability_stats("Health Bomb", "Healing");
var dmg = scr_ability_stats("Health Bomb", "Damage");
if(point_distance(x,y,ball_player.x,ball_player.y) < 300) {	
	if(global.teamNum[num] == global.teamNum[ball_player.num]) {
		/*if(ball_player.decay > 0)
			scr_damage(heals,ball_player.decayNum,false);
		else {
			if(ball_player.num != num)
				ball_player.hp += 60 * global.players[num].healing;
			else
				ball_player.hp += 60;
			if(ball_player.hp > 250 && ball_player.overheal == false)
				ball_player.hp = 250;
		}*/
		scr_heal(heals,num);
	}
	else
		scr_damage(30,num,false)
}
scr_ball_sound(snd_healBomb,x,y)
instance_create(x,y,obj_healZone);
instance_destroy()