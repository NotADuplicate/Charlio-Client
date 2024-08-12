/// @description Switch options state
if(global.shop) {
	relativeX = xp + camera_get_view_x(view_camera[0]);
	relativeY = yp + camera_get_view_y(view_camera[0]);
	if(mouse_y > relativeY && mouse_y < relativeY+90 && mouse_x > relativeX && mouse_x < relativeX + 950) {
		wipe = true;
		if(mouse_x < relativeX + 470) {
			global.shopState = "Abilities";
			with(inst_utility) {
				drawOnce = 2;
			}
		}
		else {
			global.shopState = "Passives";
		}
	}
}