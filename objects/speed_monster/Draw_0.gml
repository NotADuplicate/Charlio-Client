/// @description Insert description here
// You can write your code in this editor
if(dead) {
	//draw_sprite_ext(sprite_index,0,xpos,ypos,image_xscale,image_yscale,0,c_white,knownAlpha);
	//draw_sprite_ext(spr_speed,0,x,y,2,2,0,c_white,knownAlpha);
}
else if(place_meeting(ball_player.x,ball_player.y,obj_regen) == false || keyboard_check(ord("M"))) {
	draw_self();
	draw_sprite_ext(spr_speed,0,x,y,2,2,0,c_white,1);
}

if(poison) 
	draw_sprite_ext(spr_poison,0,x,y-30*image_yscale,1,1,0,c_white,poison/100);

if(broken > 0) {
	draw_sprite_ext(spr_broken,0,x,y-30*image_yscale,1,1,0,c_white,broken/100);
	broken--;
}
	
if(pokeNum == 0) {
	if(magicShield > 0) {
		draw_sprite_ext(spr_magicSponge,0,x,y-30*image_yscale,1,1,0,c_white,magicShield/100);
		magicShield-=.75
	}

	if(shield > 0) {
		draw_sprite_ext(spr_sponge,0,x,y-30*image_yscale,1,1,0,c_white,shield/100);
		shield-=.75
	}
}

if(shield > 0) {
	draw_sprite_ext(spr_sponge,0,x,y-30*image_yscale,1,1,0,c_white,shield/100);
	shield--
}

if(oil) 
	draw_sprite_ext(spr_oil,0,x,y-30*image_yscale,1,1,0,c_white,oil/100);
	
if(enraged) {
	draw_sprite_ext(spr_anger,0,x,y-30*image_yscale,1,1,0,c_white,1);
	hp -= 1;
}

if(dead == false && collision_line(x,y,ball_player.x,ball_player.y,ball_wall,false,true) == noone)
	draw_healthbar(x-(20*image_xscale),y-(20*image_xscale),x+(20*image_xscale),y-(16*image_xscale),(hp/maxhp)*100,c_ltgray,c_red,c_green,0,true,true);
