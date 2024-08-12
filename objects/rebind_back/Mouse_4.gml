/// @description Insert description here
// You can write your code in this editor
if(keyboard_lastkey != 700) {
	global.backKey = keyboard_lastkey
	global.backbutton = scr_keycode(keyboard_lastkey)
}

ini_open("Ball.sav")
ini_write_string("Save1","backbutton",global.backbutton);
ini_write_real("Save1","backKey",global.backKey);
ini_write_string("Save1","rightBinded",global.rightBinded);
ini_close()