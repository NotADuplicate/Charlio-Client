/// @description Draw box on surface
if(surface_exists(global.shopSurf)) { 
	if(global.shop && global.shopState == "Abilities") {
		surface_set_target(global.shopSurf);
		//draw_sprite(spr_white,0,500,300);
		draw_sprite_ext(spr_border,0,x,y,2,2,0,c_white,1);
		if(selected) {
			draw_text(x+40,y-20,keyboard_string);
			//game_end()
		}
		else
			draw_text(x+40,y-20,"SEARCH");
			
		surface_reset_target();
	}
}