/// @description Face direction
direction += random_range(-30,30);
image_angle = direction;

visible = true;
if(num == ball_player.num) {
	if(global.screenShake < 7)
		global.screenShake++;
}