/// @description Insert description here
// You can write your code in this editor
//keyboard_set_map(vk_space,0)
if(global.rightBinded = "space")
	global.rightBinded = "";
if(keyboard_lastkey != 700) 
	global.spacekey = keyboard_lastkey
else
	global.rightBinded = "space";
global.spacebutton = scr_keycode(keyboard_lastkey)

ini_open("Ball.sav")
ini_write_string("Save1","spacebutton",global.spacebutton);
ini_write_real("Save1","spacekey",global.spacekey);
ini_write_string("Save1","rightBinded",global.rightBinded);
ini_close()