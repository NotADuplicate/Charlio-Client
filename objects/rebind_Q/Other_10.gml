/// @description Actually bind the button
if(global.rightBinded = letter)
	global.rightBinded = "";
if(keyboard_lastkey != 700) 
	var key = keyboard_lastkey
else
	global.rightBinded = letter;
var button = scr_keycode(keyboard_lastkey)

variable_global_set(myKey,key);
variable_global_set(myButton,button);

ini_open("Ball.sav")
ini_write_string("Save1",myButton,button);
ini_write_real("Save1",myKey,key);
ini_write_string("Save1","rightBinded",global.rightBinded);
ini_close()