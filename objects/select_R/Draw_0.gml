/// @description Draw "Right"
if(surface_exists(global.shopSurf)) { 
	if(global.shop && global.shopState == "Abilities") {
		surface_set_target(global.shopSurf)
		
		draw_text(x,y-35,global.Rbutton)
		draw_self()
		if(global.R != 0) {
			draw_text(x,y+20,global.R);
			draw_sprite(scr_ability_sprite(global.R),0,x,y)
		}
	
		surface_reset_target();
	}
}