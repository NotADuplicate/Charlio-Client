/// @description get more resistance

global.resistance *= 1.25
global.statSource[3,8] += 2;
if(global.resistance > 2)
	instance_destroy();