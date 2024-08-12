/// @description Insert description here
// You can write your code in this editor
//keyboard_set_map(ord("Q"),0)
if(global.rightBinded = "R")
	global.rightBinded = "";
if(keyboard_lastkey != 700) 
	global.Rkey = keyboard_lastkey
else
	global.rightBinded = "R"
global.Rbutton = scr_keycode(keyboard_lastkey)

ini_open("Ball.sav")
ini_write_string("Save1","Rbutton",global.Rbutton);
ini_write_real("Save1","Rkey",global.Rkey);
ini_write_string("Save1","rightBinded",global.rightBinded);
ini_close()