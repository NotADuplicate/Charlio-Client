/// @description Insert description here
// You can write your code in this editor


// Inherit the parent event
event_inherited();

	dead = true
	garrenBuff = true;
	image_alpha = .1;
	timer = deathTime
	x = 0;
	y = 0;

if(global.teamNum[num] == global.teamNum[ball_player.num] && global.dead == false) {
		global.rightCool = 0;
		global.QCool = 0;
		global.spaceCool = 0;
		if(global.jungle) {
			with(ball_game) { //power and damage
				repeat(2) {
				if(obj_junglePass.pwr == 0) {
					node_send(buffer,"eventName","Status","Target",ball_player.num,"Status Num",23)
				}
				if(obj_junglePass.dmg == 0) {
					node_send(buffer,"eventName","Status","Target",ball_player.num,"Status Num",11)
				}
				}
			}
			ball_player.ammoRate = 3; //ammo
			if(obj_junglePass.spd == 0)
				ball_player.moveSpd+=2;
		}
		else {
			with(ball_game) { //power and damage
				if(obj_junglePass.pwr == 0) {
					node_send(buffer,"eventName","Status","Target",ball_player.num,"Status Num",23)
				}
				if(obj_junglePass.dmg == 0) {
					node_send(buffer,"eventName","Status","Target",ball_player.num,"Status Num",11)
				}
			}
			ball_player.ammoRate = 2; //ammo
			ball_player.moveSpd++;
		}
		obj_junglePass.spd = 5;
		obj_junglePass.dmg = 5;
		obj_junglePass.pwr = 5;
		obj_junglePass.ammo = 5;
		obj_junglePass.regen = 5;
		obj_junglePass.garren = 5400;
	}