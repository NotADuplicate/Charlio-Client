/*// @description Draw "Q"
if(surface_exists(global.shopSurf)) { 
	if(global.shop && global.shopState == "Abilities") {
		surface_set_target(global.shopSurf);
		
		draw_text(x,y-35,global.spacebutton)
		draw_self()
		if(global.space != 0) {
			draw_text(x,y+20,global.space);
			draw_sprite(scr_ability_sprite(global.space),0,x,y)
		}
		
		surface_reset_target();
	}
}
*/
event_inherited();