/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(.5)
draw_self();
if(global.teamNum[killer] == -1)
	draw_set_color(c_blue)
else
	draw_set_color(c_red)
if(suicide) {
	draw_text(x,y-35,global.names[killer]);
	draw_set_color(c_white)
	draw_sprite(spr_skull,0,x,y+12)
}
else {
	draw_text(x,y-35,global.names[killer]);
	draw_set_color(c_white)
	draw_sprite(spr_attack,0,x,y);
	if(global.teamNum[victim] == -1)
		draw_set_color(c_blue)
	else
		draw_set_color(c_red)
	draw_text(x,y+10,global.names[victim]);
	draw_set_color(c_white)
}
	draw_set_alpha(1)