/// @description Insert description here
// You can write your code in this editor
if(keyboard_check(vk_tab)) {
	if(global.teamNum[num] == -1) { //draw box for left team
		draw_rectangle_color(0,y,500,y+120,c_dkgray,c_dkgray,c_dkgray,c_dkgray,false)
		xp = x;
	}
	else { //box for right team
		draw_rectangle_color(524,y,1024,y+120,c_dkgray,c_dkgray,c_dkgray,c_dkgray,false)
		xp = x-100
	}
	draw_set_halign(center)
	if(global.players[num].garren) //draw name purple if they have garen buff
		draw_text_transformed_color(xp,y,global.names[num],2,2,0,c_purple,c_purple,c_purple,c_purple,1);
	else
		draw_text_transformed_color(xp,y,global.names[num],2,2,0,col,col,col,col,1);
	
	if(global.players[num].respawnTimer > 0) { //say respawn timer
		draw_text(xp+100,y,"Respawn: " + string(global.players[num].respawnTimer-0.5))
	}
	else if(global.testMode == false){ //if they're living show ping
		draw_text(xp + 100,y,"Ping: " + string(global.ping[num]))
	}
	 //draw kills and damage n shit
	draw_set_halign(fa_right)
	draw_text(xp-15,y+30,"(" + string(global.kills[num]) + "/" + string(global.deaths[num]) + ")")
	draw_set_halign(fa_left)
	draw_text(xp+30,y+30,"Damage:" + string(round(global.players[num].totalDamage)))
	draw_set_halign(center)
	
	i = 1;
	xp = x-16*global.teamNum[num]
	repeat(3) { //draw 3 white boxes and abilities
		draw_sprite(spr_white,0,xp,y+70)
		if(sprite_exists(global.knownLoadout[num,i])) {
			if(global.knownLoadout[num,i] != 0) 
				draw_sprite(global.knownLoadout[num,i],0,xp,y+70);
		}
		xp -= 40 * global.teamNum[num];
		i++;
	}
	if(global.knownLoadout[num,4] != 0) {
		draw_sprite(spr_white,0,xp,y+70)
		if(sprite_exists(global.knownLoadout[num,4])) {
			if(global.knownLoadout[num,4] != 1) 
				draw_sprite(global.knownLoadout[num,4],0,xp,y+70);
		}
	}
	xp += 140 * global.teamNum[num];
	i = 5;
	if(global.knownLoadout[num,0] != 0) {
			draw_sprite_ext(spr_white,0,xp,y+100,.75,.75,0,c_white,1)
			if(sprite_exists(global.knownLoadout[num,0]))
				draw_sprite_ext(global.knownLoadout[num,0],0,xp,y+100,.75,.75,0,c_white,1)
			xp -= 30 * global.teamNum[num];
	}
	baseXp = xp;
	yp = y;
	repeat(global.loadoutSize[num]-4) { //draw passives
		if(global.knownLoadout[num,i] != 0) {
			draw_sprite_ext(spr_white,0,xp,yp+100,.75,.75,0,c_white,1)
			if(sprite_exists(global.knownLoadout[num,i]))
				draw_sprite_ext(global.knownLoadout[num,i],0,xp,yp+100,.75,.75,0,c_white,1)
		}
		xp -= 30 * global.teamNum[num];
		i++;
		if(xp > 450 && xp < 570) {
			xp = baseXp;
			yp += 40;
		}
	}
	if(num == 1 && global.gameMode != "Royale") {//draw timers for drag and garren
		draw_sprite_ext(spr_purp,0,440,50,.5,.5,0,c_white,1)
		if(obj_drag.dead) 
			draw_text(460,35,scr_minutes(round(obj_drag.timer)));
		draw_sprite_ext(spr_purp,0,520,50,.5,.5,0,c_white,1)
		if(obj_garren.dead) 
			draw_text(540,35,scr_minutes(round(obj_garren.timer)));
	}
	draw_set_halign(fa_center)
}