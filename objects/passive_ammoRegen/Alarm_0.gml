/// @description get more mana
global.ammoRegen -= 20;
global.statSource[3,0]-= 2
if(global.ammoRegen < 40)
	instance_destroy()