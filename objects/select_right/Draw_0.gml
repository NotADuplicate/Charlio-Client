/// @description Draw "Right"
event_inherited();
/*if(surface_exists(global.shopSurf)) { 
	if(global.shop && global.shopState == "Abilities") {
		surface_set_target(global.shopSurf);

		draw_text(x,y-35,global.rightbutton)
		draw_self()
		if(global.right != 0) {
			draw_text(x,y+20,global.right);
			draw_sprite(scr_ability_sprite(global.right),0,x,y)
		}
		
		surface_reset_target();
	}
}