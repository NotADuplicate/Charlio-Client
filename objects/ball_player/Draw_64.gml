/// @description Insert description here
// You can write your code in this editor
draw_healthbar(20,20,300,40,100*(global.xp/global.xpMax),c_dkgray,c_white,c_white,0,true,true)
draw_text_color(160,20,global.leveled,c_black,c_black,c_black,c_black,1);

if(keyboard_check(vk_tab) == false) {
	if(global.dead)
		draw_text(500,40,string_hash_to_newline(round(respawnTimer)));
	else if(global.shop == false)
		draw_text(500,30,string_hash_to_newline(global.ammo));
}



if((global.shop == false && global.dead == false) || global.gameMode == "Royale") {
	yp = 710;
	xp = 300;
	if(global.right != 0) {
		draw_sprite(spr_white,0,xp,yp)
		draw_sprite(scr_ability_sprite(global.right),0,xp,yp)
		if(global.rightCool != 0) 
			draw_text(xp,yp+28,round(global.rightCool/global.coolReduc))
		else
			draw_text(xp,yp+28,global.rightbutton)
		xp += 64;
	}
	if(global.Q != 0) {
		draw_sprite(spr_white,0,xp,yp)
		draw_sprite(scr_ability_sprite(global.Q),0,xp,yp)
		if(global.QCool != 0)
			draw_text(xp,yp+28,round(global.QCool/global.coolReduc))
		else
			draw_text(xp,yp+28,global.Qbutton)
		xp += 64;
	}
	if(global.space != 0) {
		draw_sprite(spr_white,0,xp,yp)
		draw_sprite(scr_ability_sprite(global.space),0,xp,yp)
		if(global.spaceCool != 0)
			draw_text(xp,yp+28,round(global.spaceCool/global.coolReduc))
		else
			draw_text(xp,yp+28,global.spacebutton)
		xp += 64;
	}
	if(global.R != 0) {
		draw_sprite(spr_white,0,xp,yp)
		draw_sprite(scr_ability_sprite(global.R),0,xp,yp)
		if(global.RCool != 0)
			draw_text(xp,yp+28,round(global.RCool/global.coolReduc))
		else
			draw_text(xp,yp+28,global.Rbutton)
	}
}