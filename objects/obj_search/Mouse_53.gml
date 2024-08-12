/// @description Select
xp = camera_get_view_x(view_camera[0])+x+obj_options.xp+35;
yp = camera_get_view_y(view_camera[0])+y+obj_options.yp;
selected = false;
//instance_create(xp,yp,obj_dashing);
if(global.shop && mouse_x > xp-40 && mouse_x < xp + 65 && mouse_y > yp-30 && mouse_y < yp+20 && global.shopState = "Abilities") { //actually be clicked
	keyboard_string = "";
	selected = true;
}