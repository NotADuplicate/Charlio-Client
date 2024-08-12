/// @description Insert description here
// You can write your code in this editor
if(keyboard_lastkey != 700) {
	global.shopKey = keyboard_lastkey
	global.shopbutton = scr_keycode(keyboard_lastkey)
}
ini_open("Ball.sav")
ini_write_real("Save1","shopKey",global.shopKey);
ini_write_string("Save1","shopbutton",global.shopbutton);
ini_close()