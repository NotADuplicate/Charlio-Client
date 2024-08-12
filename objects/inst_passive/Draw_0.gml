/// @description Insert description here
// You can write your code in this editor
if(surface_exists(global.shopSurf) && global.shopState == "Passives") {
	surface_set_target(global.shopSurf);
	
	xp = x - 1000;
	yp = y - 4200;
	if(clicked) {
		if(selected == 1) {
			//draw_rectangle_color(xp-16,yp-16,xp+16,yp+16,c_green,c_green,c_green,c_green,true)
			//draw_rectangle_color(xp-15,yp-15,xp+15,yp+15,c_green,c_green,c_green,c_green,true)
			draw_rectangle_color(xp-17,yp-17,xp+17,yp+17,c_green,c_green,c_green,c_green,false)
			draw_rectangle_color(600,150,900,500,obj_shop.rectColor,obj_shop.rectColor,obj_shop.rectColor,obj_shop.rectColor,false)
			draw_text_ext(750,200,str,20,300)
		}
		else {
			draw_rectangle_color(xp-20,yp-20,xp+20,yp+20,obj_shop.rectColor,obj_shop.rectColor,obj_shop.rectColor,obj_shop.rectColor,false)
			//draw_rectangle_color(xp-15,yp-15,xp+15,yp+15,obj_shop.rectColor,obj_shop.rectColor,obj_shop.rectColor,obj_shop.rectColor,true)
			//draw_rectangle_color(xp-17,yp-17,xp+17,yp+17,obj_shop.rectColor,obj_shop.rectColor,obj_shop.rectColor,obj_shop.rectColor,true)
			//draw_text_ext(1535,4673,str,20,600)
		}
	}
	draw_sprite(spr_white,0,xp,yp);
	draw_sprite(spr,0,xp,yp);
	
	surface_reset_target();
}