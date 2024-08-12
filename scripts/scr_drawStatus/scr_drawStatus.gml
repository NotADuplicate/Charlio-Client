// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_drawStatus(){
///Draw status

	var dt = delta_time / 35000;
	//var yp = round(y)-30*size;
	
	if(confuse > 0) {
		draw_sprite_ext(spr_confuse,0,round(x),round(y)-(30*(image_yscale/2+.5)),1,1,0,c_white,confuse/30);
		confuse-= dt;
	}

	/*if(jam > 0) {
		draw_sprite_ext(spr_jam,0,round(x),round(y)-(30*(image_yscale/2+.5)),1,1,0,c_white,jam/30);
		jam-= dt;
	}*/

	if(inversion > 0) {
		draw_sprite_ext(spr_inversion,0,round(x),round(y)-(30*(image_yscale/2+.5)),1,1,0,c_white,inversion/30);
		inversion-= dt;
	}

	/*if(quickTap > 0) {
		draw_sprite_ext(spr_fastfire,0,round(x),round(y)-(30*(image_yscale/2+.5)),1,1,0,c_white,quickTap/5);
		quickTap-= dt;
	}*/

	if(bleed > 0) {
		draw_sprite_ext(spr_blood,0,round(x),round(y)-(30*(image_yscale/2+.5)),1,1,0,c_white,0.5+bleed/200);
		bleed-= dt;
	}
	
	if(milked > 0) {
		draw_sprite_ext(spr_milkDrop,0,round(x),round(y)-(30*(image_yscale/2+.5)),1,1,0,c_white,milked/100);
		milked-= dt;
	}

	if(chummed > 0) {
		draw_sprite_ext(spr_meat,0,round(x),round(y)-(30*(image_yscale/2+.5)),1,1,0,c_white,chummed/100);
		chummed-= dt;
	}

	if(marked > 0) {
		draw_sprite_ext(spr_airstrike,0,round(x),round(y),image_xscale*1.5,image_yscale*1.5,0,c_white,1)
		marked-= dt;
	}
	
	if(murderball > 0) {
		draw_sprite_ext(spr_deathball,0,round(x),round(y)-(30*(image_yscale/2+.5)),0.7,0.7,0,c_white,1);
		murderball-= dt;
	}
	
	if(enraged)
		draw_sprite_ext(spr_anger,0,round(x),round(y)-(30*(image_yscale/2+.5)),0.7,0.7,0,c_white,1);
	
	if(blocking > 0) {
		draw_sprite_ext(spr_defense,0,round(x),round(y)-(30*(image_yscale/2+.5)),0.7,0.7,0,c_white,1);
		blocking-= dt;
	}

	if(poison > 0) 
		draw_sprite_ext(spr_poison,0,round(x),round(y)-(30*(image_yscale/2+.5)),1,1,0,c_white,poison/100);
	
	if(tossGrabbed > 0)
		draw_sprite_ext(spr_hand,0,round(x),round(y)-(30*(image_yscale/2+.5)),1,1,0,c_white,tossGrabbed/30);
	
	if(decay > 0) {
		draw_sprite_ext(spr_decay,0,round(x),round(y)-(30*(image_yscale/2+.5)),1,1,0,c_white,decay/100);
		decay-= dt;
	}
	
	if(spellShield > 0) {
		draw_sprite_ext(spr_spellShield,0,round(x),round(y),2,2,0,c_white,spellShield/100);
		spellShield-= dt;
	}
	
	if(broken > 0)
		draw_sprite_ext(spr_broken,0,round(x),round(y)-(30*(image_yscale/2+.5)),1,1,0,c_white,broken/100);
	
	if(frost > 0)
		draw_sprite_ext(spr_frost,0,round(x),round(y)-(30*(image_yscale/2+.5)),1,1,0,c_white,frost/100);
	
	if(stunned > 0) {
		draw_sprite_ext(spr_stun,0,round(x),round(y)-(30*(image_yscale/2+.5)),1.5,1.5,stunned*4,c_white,stunned/100);
		stunned-= dt;
	}
	
	if(oil > 0) {
		ins = instance_create(round(x),round(y),obj_oil)
		ins.num = num
		draw_sprite_ext(spr_oil,0,round(x),round(y)-(30*(image_yscale/2+.5)),1,1,0,c_white,oil/100);
	}
	
	if(cryo > 0) 
		draw_sprite_ext(HD_ice,0,round(x),round(y),.15,.15,0,c_white,cryo/100);
}