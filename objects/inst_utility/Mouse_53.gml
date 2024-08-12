/// @description Insert description here
// You can write your code in this editor
if(global.shop && global.shopState == "Abilities") {
	xp = camera_get_view_x(view_camera[0])+obj_shop.xp+x;
	yp = camera_get_view_y(view_camera[0])+obj_shop.yp+y-4000;
	if(mouse_x < xp + 20 && mouse_x > xp - 20 && mouse_y < yp + 20 && mouse_y > yp-20) {
		global.utility = utility;

		global.statAmmo = statAmmmo
		global.statDmg = statDmg
		global.statMobi = statMobi
		global.statPush = statPush
		global.statCooldown = statCooldown 
		global.statSup = statSup 
		global.statZone = statZone 
		global.statCC = statCC 
		global.statDef = statDef 
	}
}