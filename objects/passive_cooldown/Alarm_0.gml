/// @description get more mana
global.coolReduc *= 1.3
if(global.coolReduc > 2)
	instance_destroy();
	
global.statSource[3,1] += 2;