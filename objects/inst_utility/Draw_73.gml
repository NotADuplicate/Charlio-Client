/*// @description Insert description here
// You can write your code in this editor
draw_text(x+25,y+20,statOrder[0])
draw_text(x-25,y+20,statAmmmo)*/
if(surface_exists(global.shopSurf) && drawOnce > 0) {
	surface_set_target(global.shopSurf);
	draw_sprite(sprite0,0,x,y-4000);
	draw_sprite(scr_ability_sprite(utility),0,x,y-4000);
	surface_reset_target();
	drawOnce--;
}