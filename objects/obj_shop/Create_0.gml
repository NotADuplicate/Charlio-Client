/// @description Start expanding from the top
height = 0;
xp = 50;
xp2 = 1000;
yp = 40;
global.shop = false;
global.shopState = "Passives";
tabs = true;

firstDraw = true;
wipe = false;
borderColor = c_black;
rectColor = c_dkgray;
tabsColor = c_gray;

global.shopSurf = surface_create(950,700);

instance_create(0,0,ins_sort);

instance_create(100,600,select_right)
instance_create(200,600,select_Q)
instance_create(300,600,select_space)
instance_create(800,140,obj_search);

/*instance_create(300,500,sound_control);
instance_create(300,400,shake_control);
instance_create(200,300,obj_fullscreen);

scr_makeBind(150,300,"Q","Qkey","Qbutton","Second Ability");
scr_makeBind(300,300,"space","spacekey","spacebutton","Third Ability");
scr_makeBind(450,300,"R","Rkey","Rbutton","Fourth Ability");

instance_create(300,400,unbind_button);