/// @description Die and bounce
if(other.murderball)
	scr_damage(5+power(other.speed,2),num,false)
else if(other.stasis == false){
	scr_ball_move(point_direction(x,y,other.x,other.y),pushing*2,num)
		
	if(speed > 4) {
		scr_ball_move(direction,pushing*speed/4,num)
		speed *= .5
	}
}
					/*global.dead = true;
					b = instance_create(x,y,obj_blast)
					b.dmg = 3;
					b.num = num;
					x = -1000;
					y = -1000;
					alarm[9] = 150;