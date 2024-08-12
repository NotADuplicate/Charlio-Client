/// @description get more defense

global.defense *= 1.25
global.statSource[3,8] += 2;
if(global.defense > 2)
	instance_destroy();