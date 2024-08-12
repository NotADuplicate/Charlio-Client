/// @description Check key binds in saved
ini_open("Ball.sav");
ini_write_string("Save1","rightBinded","right");
ini_write_real("Save1","binded2Right",0);
global.spacekey = ini_read_real("Save1","spacekey",vk_space);
global.Rkey = ini_read_real("Save1","Rkey",ord("R"));
global.Rbutton = ini_read_string("Save1","Rbutton","R");
global.Qkey = ini_read_real("Save1","Qkey",ord("Q"));
global.spacebutton = ini_read_string("Save1","spacebutton","Space");
global.Qbutton = ini_read_string("Save1","Qbutton","Q");
global.rightbutton = ini_read_string("Save1","rightbutton","RC");
global.mapbutton = ini_read_string("Save1","mapbutton","M");
global.mapKey = ini_read_real("Save1","mapKey",ord("M"));
global.backbutton = ini_read_string("Save1","backbutton","B");
global.backKey = ini_read_real("Save1","backKey",ord("B"))
global.shopbutton = ini_read_string("Save1","shopbutton","P");
global.shopKey = ini_read_real("Save1","shopKey",ord("P"))
global.binded2Right = ini_read_real("Save1","binded2Right",0);
global.rightBinded = ini_read_string("Save1","rightBinded","right");
global.jamesKey = ord("J");
global.KBkey = ord("K");