if(keyboard_lastkey != 700) {
	global.mapKey = keyboard_lastkey
	global.mapbutton = scr_keycode(keyboard_lastkey)
}
ini_open("Ball.sav")
ini_write_string("Save1","mapbutton",global.mapbutton);
ini_write_real("Save1","mapKey",global.mapKey);
//ini_write_string("Save1","rightBinded",global.rightBinded);
ini_close()