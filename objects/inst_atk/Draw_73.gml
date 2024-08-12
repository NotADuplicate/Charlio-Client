/// @description Draw onto surface
if(surface_exists(global.shopSurf) && global.shopState == "Passives") {
	surface_set_target(global.shopSurf);
	
	xp = x - 1000;
	yp = y - 4200;
	draw_sprite(spr_white,0,xp,yp);
	draw_sprite(spr,0,xp,yp);
	
	surface_reset_target();
}