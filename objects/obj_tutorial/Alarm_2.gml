/// @description Create dummy and various UI to be invisible
instance_create(ball_player.x,ball_player.y+320,obj_dummy)
with(inst_passive) {
	//x += 4000;
}
with(inst_boots) {
	instance_destroy();
}
with(obj_turret) {
	hp = 10;
}
obj_shop.tabs = false;
with(ins_sort) {
	visible = false;
}
with(inst_utility) {
	visible = false;
	x -= 16;
}
obj_shop.wipe = true;
//select_Q.visible = false;
//select_space.visible = false;
choose_molotov.visible = true;
stage = 0;