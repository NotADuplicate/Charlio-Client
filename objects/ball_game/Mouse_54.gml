/// @description Use utilities
scr_ability_pressed(global.rightBinded)
/*if(global.ammo > 0 && instance_exists(ball_player) && global.rightCool == 0 && global.stun == 0) {
    switch(global.right) {
        case "mine":
            buffer_seek(buffer, buffer_seek_start, 0);
            buffer_write(buffer, buffer_u8, 7); //bullet
            buffer_write(buffer, buffer_u16, ball_player.x);
            buffer_write(buffer, buffer_u16, ball_player.y);
            buffer_write(buffer, buffer_u16, 0);
            buffer_write(buffer,buffer_u8,obj_mine);
            buffer_write(buffer,buffer_u8,ball_player.num);
            network_send_packet(socket, buffer, buffer_tell(buffer));
            scr_ball_ammo(1);
        break;
        case "heal":
            if(global.ammo > healuse-1) {
                ball_player.hp += 35;
                if(ball_player.hp > ball_player.maxhp) {
                    ball_player.hp = ball_player.maxhp
                }
                scr_ball_ammo(healuse);
                healuse++;
            }
        break;
        case "dash": 
		global.rightCool = 2;
            if(ball_player.spd < 15) {
                ball_player.spd = ball_player.spd * 3;
                global.invincibility = 15;
                alarm[7] = 10;
                scr_ball_ammo(1);
            }
        break;
        case "push":
            buffer_seek(buffer, buffer_seek_start, 0);
            buffer_write(buffer, buffer_u8, 7); //bullet
            buffer_write(buffer, buffer_u16, mouse_x);
            buffer_write(buffer, buffer_u16, mouse_y);
            buffer_write(buffer, buffer_u16, 0);
            buffer_write(buffer,buffer_u8,obj_push);
            buffer_write(buffer,buffer_u8,ball_player.num);
            network_send_packet(socket, buffer, buffer_tell(buffer));
            scr_ball_ammo(1);
        break;
        case "wall":
            buffer_seek(buffer, buffer_seek_start, 0);
            buffer_write(buffer, buffer_u8, 7); //bullet
            dir = point_direction(ball_player.x,ball_player.y,mouse_x,mouse_y);
            xp = ball_player.x + lengthdir_x(70,dir);
            yp = ball_player.y + lengthdir_y(70,dir);
            buffer_write(buffer,buffer_u16,xp);
            buffer_write(buffer,buffer_u16,yp);
            buffer_write(buffer,buffer_u16,dir);
            buffer_write(buffer,buffer_u8,obj_barrier);
            buffer_write(buffer,buffer_u8,ball_player.num);
            network_send_packet(socket, buffer, buffer_tell(buffer));
            scr_ball_ammo(1);
        break;
        case "airstrike":
            if(global.ammo > 3) {
                scr_ball_ammo(4);
                instance_create(mouse_x,mouse_y,player_airstrike);
            }
        break;
        case "reflect":
            buffer_seek(buffer, buffer_seek_start, 0);
            buffer_write(buffer, buffer_u8, 7); //bullet
            dir = point_direction(ball_player.x,ball_player.y,mouse_x,mouse_y);
            xp = ball_player.x + lengthdir_x(50,dir);
            yp = ball_player.y + lengthdir_y(50,dir);
            buffer_write(buffer,buffer_u16,xp);
            buffer_write(buffer,buffer_u16,yp);
            buffer_write(buffer,buffer_u16,dir);
            buffer_write(buffer,buffer_u8,obj_reflect);
            buffer_write(buffer,buffer_u8,ball_player.num);
            network_send_packet(socket, buffer, buffer_tell(buffer));
            scr_ball_ammo(1);
        break;
		case "Chainbreaker":
			held = true;
			range = 200;
			scr_ball_ammo(3)
		break;
		case "Hook":
            buffer_seek(buffer, buffer_seek_start, 0);
			scr_ball_ammo(2);
			global.rightCool = 5;
            buffer_write(buffer, buffer_u8, 7); //bullet
            dir = point_direction(ball_player.x,ball_player.y,mouse_x,mouse_y)
            xp = x;
            yp = y;
            buffer_write(buffer,buffer_u16,xp);
            buffer_write(buffer,buffer_u16,yp);
            buffer_write(buffer,buffer_u16,dir);
            buffer_write(buffer,buffer_u8,obj_hook);
            buffer_write(buffer,buffer_u8,ball_player.num);
            network_send_packet(socket, buffer, buffer_tell(buffer));
		break;
		case "Stasis":
			held = true;
			range = 200;
		break;
    }
}*/

