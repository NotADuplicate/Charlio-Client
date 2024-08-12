/// @description Insert description here
// You can write your code in this editor
if(keyboard_lastkey != 700) { //if you arent setting it to right click do this
	if(global.rightBinded = "right")
		global.rightBinded = "";
	global.binded2Right = keyboard_lastkey;
	global.rightbutton = scr_keycode(keyboard_lastkey)
}
else { //setting it to RC
	global.rightBinded = "right";
	global.rightbutton = "RC";
}

ini_open("Ball.sav")
ini_write_string("Save1","rightbutton",global.rightbutton);
ini_write_real("Save1","binded2Right",global.binded2Right);
ini_close()