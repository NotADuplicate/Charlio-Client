/// @description highlight
if(surface_exists(global.shopSurf) && global.shopState == "Passives") {
	surface_set_target(global.shopSurf);
	
	xp = x - 1000;
	yp = y - 4200;
	draw_sprite(spr_white,0,xp,yp);
	if(global.bootsObj = self) {
		draw_rectangle_color(xp-16,yp-16,xp+16,yp+16,c_yellow,c_yellow,c_yellow,c_yellow,true)
		draw_rectangle_color(xp-15,yp-15,xp+15,yp+15,c_yellow,c_yellow,c_yellow,c_yellow,true)
		draw_rectangle_color(xp-17,yp-17,xp+17,yp+17,c_yellow,c_yellow,c_yellow,c_yellow,true)
	}
	else if(selected == 1) {
		draw_rectangle_color(xp-16,yp-16,xp+16,yp+16,c_green,c_green,c_green,c_green,true)
		draw_rectangle_color(xp-15,yp-15,xp+15,yp+15,c_green,c_green,c_green,c_green,true)
		draw_rectangle_color(xp-17,yp-17,xp+17,yp+17,c_green,c_green,c_green,c_green,true)
		draw_text_ext(1535,4673,str,20,600)
	}
	draw_sprite(spr,0,xp,yp)
	
	surface_reset_target();
}