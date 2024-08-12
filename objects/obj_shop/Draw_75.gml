/// @description Draw gray square with black border as it drops down
if(height > 0) {
	draw_rectangle_color(xp,yp,xp2,yp+height,rectColor,rectColor,rectColor,rectColor,false);
	draw_line_width_color(xp,yp,xp2,yp,6,borderColor,borderColor);
	draw_line_width_color(xp,yp+height,xp2,yp+height,6,borderColor,borderColor);
	draw_line_width_color(xp,yp,xp,yp+height,6,borderColor,borderColor);
	draw_line_width_color(xp2,yp,xp2,yp+height,6,borderColor,borderColor);
}
if(surface_exists(global.shopSurf) == false) {
	global.shopSurf = surface_create(950,700);
}
surface_set_target(global.shopSurf);

if(firstDraw) {
	draw_rectangle_color(0,0,950,60,tabsColor,tabsColor,tabsColor,tabsColor,false);
	draw_text_transformed(290,20,"Abilities",2,2,0);
	//draw_text_transformed(8120,30,"Controls",2,2,0);
	draw_text_transformed(634,20,"Passives",2,2,0);
	//firstDraw = false;
}
if(tabs == false) {
	draw_rectangle_color(0,0,950,60,rectColor,rectColor,rectColor,rectColor,false);
}

if(wipe) {
	draw_rectangle_color(0,60,950,700,rectColor,rectColor,rectColor,rectColor,false);
	wipe = false;
}

draw_rectangle_color(350,480,550,520,rectColor,rectColor,rectColor,rectColor,false);
//draw_text(450,500,global.utility);

draw_rectangle_color(0,60,950,80,rectColor,rectColor,rectColor,rectColor,false);
switch(global.shopState) {
	case "Abilities":
		draw_rectangle_color(0,60,470,80,tabsColor,tabsColor,tabsColor,tabsColor,false);
		draw_rectangle_color(650,150,940,700,rectColor,rectColor,rectColor,rectColor,false);
		if(global.utility != "airstrike") {
			draw_text_transformed(770,160,global.utility,2,2,0);
			draw_text_ext(790,200,scr_ability_string(global.utility),20,250)
		}
		if(global.free == 0)
			draw_text(770,600,"Swap out an ability for free!")
		else
			draw_text(770,600,string(round(global.free)) + " " +"seconds until free swap")
	break;
	case "Passives":
		if(tabs)
			draw_rectangle_color(470,60,950,80,tabsColor,tabsColor,tabsColor,tabsColor,false);
		draw_rectangle_color(300,500,700,600,rectColor,rectColor,rectColor,rectColor,false);
		draw_text(500,550,global.atktext);
	break;
}

if(!global.shop) {
	if(height > 0)
		height -= 100;
}
else if(height < 700)
	height += 70;





surface_reset_target();

if(height > 1)
	draw_surface_part(global.shopSurf,0,0,xp2-xp,height,xp,yp);

/*if(global.shop) {
	xp = camera_get_view_x(view_camera[0]);
	yp = camera_get_view_y(view_camera[0]);
	draw_rectangle_color(xp,yp,xp+1400,yp+900,rectColor,rectColor,rectColor,rectColor,false);
}