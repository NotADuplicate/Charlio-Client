/// @description Insert description here
// You can write your code in this editor
if(global.connected) {
		y = 80 + num*65;
	if(team == -1) { //draw box for left team
		draw_rectangle_color(0,y,500,y+60,c_dkgray,c_dkgray,c_dkgray,c_dkgray,false)
		xp = 200;
	}
	else { //box for right team
		draw_rectangle_color(524,y,1024,y+60,c_dkgray,c_dkgray,c_dkgray,c_dkgray,false)
		xp = 700
	}
	draw_set_halign(center)
	draw_text_transformed_color(xp,y,named,2,2,0,col,col,col,col,1);
	
	if(ready) {
		draw_sprite(spr_checkedbox,0,xp-64,y+20);
	}
	else {
		draw_sprite(spr_checkbox,0,xp-64,y+20);
	}
	
	draw_set_halign(fa_center)
}