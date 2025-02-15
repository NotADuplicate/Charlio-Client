function scr_ball_receive() {
	var buffer = argument[0];
	var message_id = buffer[? "eventName"]
	if(instance_exists(ball_player) || message_id = "Start Game" || message_id == "Team Name") {//global.playBall || message_id < 3 || message_id == 14) {
	switch(message_id) {
	    case 0:
	        global.game = buffer_read(buffer,buffer_string);
	    case 1: 
	        //index = buffer_read(buffer, buffer_u8);
	        xp = buffer_read(buffer, buffer_u16);
	        yp = buffer_read(buffer, buffer_u16);
	        //scr_others(xp,yp);
	        //var mx = buffer_read(buffer,buffer_u16);
	        //var my = buffer_read(buffer,buffer_u16);
	        instance_create(xp,yp,obj_click);
	    break;
		case "Ping":
			num = buffer[? "Num"];
			global.ping[num] = buffer[? "Ping"]
			if(num == obj_client.index) 
				obj_client.ping = current_time-obj_client.pingSet
		break
	    case "Start Game": //start game
	        global.ammo = 0;
			global.playBall = false;
	        global.ready = 0;
	        obj_client.ready = false;
			global.mons = 21;
			i = 0;
			repeat(10) {
				global.players[i] = self;
				global.ping[i] = 0;
				i++;
			}
	            if(instance_exists(inst_game)) { //delete the old game object to make way for the new
	                instance_destroy(inst_game);
	            }
			global.gameMode = "Norms"//buffer_read(buffer,buffer_string)
			ins = instance_create_depth(0,0,0,ball_game);
			
			room_goto(baby_room);
			
	        ins.alarm[3] = 1;
	        ins.loop = int64(buffer[? "Players"])
	        obj_client.index = int64(buffer[? "Num"])
			if(obj_client.index > ins.loop) {
				show_message("This is crashing the game with some extra information. Please relay the following message to Charlie!")
				show_message("Players: " + string(ins.loop) + " \nNum: " + string(obj_client.index))
				popsfk = penispenis;
			}
	        random_set_seed(buffer[? "Random"]);
	        global.ammodrop = 50/30//(buffer_read(buffer,buffer_u8)/30);
	        //global.ultdrop = buffer_read(buffer,buffer_u8)
			global.abilityNum = 1//buffer_read(buffer,buffer_u8)/100;
			global.leveled = buffer[? "Levels"]
			global.simple = buffer[? "Simple"]
			global.cSwitch = true//buffer_read(buffer,buffer_bool);
	        global.teaming = true//buffer_read(buffer,buffer_bool);
			
	    break;
	    case "Player Update"://player positions 
	        num1 = buffer[? "Num"]
	        xp = buffer[? "X"]
	        yp = buffer[? "Y"]
			gunDir = buffer[? "Dir"]
	        if(num1 != ball_player.num && instance_exists(global.players[num1])) {
				global.players[num1].x = xp;
				global.players[num1].y = yp;
				global.players[num1].gunDir = gunDir;
			}
	    break;
	    case 9:
	        readying = buffer_read(buffer,buffer_bool);
	        if(readying == true) 
	            global.ready++;
	        else
	            global.ready--;
	    break;
	    case "Death":
			show_debug_message("Death received")
	        dead = buffer[? "Target"]
			killer = buffer[? "Killer"]
	        scr_ball_kill(dead,killer)
	    break;
	    case "Hook Stop": //stop using something
			ob = buffer[? "Obj"]
			num2 = buffer[? "Num"]
			//game_end()
			scr_hook_stop(ob,num2)
	    break;
		case "Monster Hp": 
			monsNum = buffer[? "Num"]
			monsHp = buffer[? "Hp"]
			with(obj_monster) {
				if(nameNum == other.monsNum) {
					if(hp > 0) {
						hp = other.monsHp;
					}
				}
			}
		break;
	    case "Bullet": //bullet
	        xp = buffer[? "X"]
	        yp = buffer[? "Y"]
	        dir = buffer[? "Dir"]
	        ob = buffer[? "Obj"]
	        bullet = instance_create(xp,yp,ob);
	        bullet.num = buffer[? "Num"]
	        if(ob == obj_grenade)
	            bullet.alarm[0] = buffer[? "Timer"]+1;
	        bullet.direction = dir;
			if(dir > 360)
				bullet.curving = -1;
	        bullet.image_angle = dir;
	        //bullet.speed = 20;
	    break;
	    case "Bolt dir": //bolt aim
	        num3 = buffer[? "Num"]
	        scr_bolt(num3,buffer[? "Dir"])
	    break;
	    case "Ball Move": //move the ball
			num4 = buffer[? "Num"]
			global.lastTouch = num4
			if(true) { //num != obj_client.index) {
		        xspd = buffer[? "hspeed"]
		        yspd = buffer[? "vspeed"]
				if(obj_bigBall.stasis) {
					obj_bigBall.stasisx = xspd
					obj_bigBall.stasisy = yspd
				} 
				else {
					obj_bigBall.hspeed = xspd;
					obj_bigBall.vspeed = yspd;
				}
			}
	    break;
	    case "Status": //send status
	        num5 = buffer[? "Target"]
			stat= buffer[? "Status Num"]
	        scr_status(stat,num5);
	    break;
	    case 12:
	        num6 = buffer_read(buffer,buffer_u8);
			scr_jug(num6);
	        //global.players[num].jug = true;
	    break;
	    case "Bolt":
	        num7 = buffer[? "Num"]
	        ins = instance_create(500,500,other_bolt);
	        ins.num = num7;
	        ins.fire = buffer[? "Shooting"]
	    break;
	    case "Team Name": //recieve names
			show_debug_message("Names")
	        num8 = buffer[? "Num"]
	        global.names[num8] = buffer[? "Name"]
			if(global.teaming != 0) {
				show_debug_message(num8)
				global.teamNum[num8] = buffer[? "Team"]
				show_debug_message(buffer[? "Team"])
			}
	    break;
	    case 15: //who wins a game
			
	    break;
	    case 16:
	        index = buffer_read(buffer,buffer_u8);
	        global.deaths[index] = buffer_read(buffer,buffer_u8);
	        global.kills[index] = buffer_read(buffer,buffer_u8);
	        global.wins[index] = buffer_read(buffer,buffer_u8);
	    break;
	    case 17: //who wins a game
	        var teamwin = buffer_read(buffer,buffer_u8);
	        ins = instance_create(0,0,gui_win);
	        ins.teamwin = teamwin;
			ins.num = -1;
	    break;
		case 23:
			num9 = buffer_read(buffer,buffer_u8);
			if(num9 == obj_client.index) {
				obj_client.alarm[9] = 1;
				room_goto(0);
			}
		break;
		case "Player Health": //recieve hp
			num10 = buffer[? "Num"]
			hpVal = buffer[? "Hp"]
			if(num10 != ball_player.num)
				global.players[num10].hp = hpVal
		break;
		case "Ball Pos":
			xp = buffer[? "X"]
			yp = buffer[? "Y"]
			xspd = obj_bigBall.hspeed
			yspd = obj_bigBall.vspeed
			if(global.lastTouch != obj_client.index) {//if(point_distance(xp+xspd*2,yp+yspd*2,obj_bigBall.x,obj_bigBall.y) > 5 && point_distance(xp+xspd,yp+yspd,obj_bigBall.x,obj_bigBall.y) > 5) {
				obj_bigBall.x = xp+xspd;
				obj_bigBall.y = yp+yspd;
			}
			//instance_create(512,100,recieve_marker);
					//obj_bigBall.x += lengthdir_x(obj_bigBall.speed,obj_bigBall.direction);
					//obj_bigBall.y += lengthdir_y(obj_bigBall.speed,obj_bigBall.direction);
		break;
		case "Tower Damage":
			towerNum = buffer[? "Num"]
			towerHP = buffer[? "Hp"]
			scr_tower_dmg(towerNum,towerHP);
		break;
		case "Targeted Status":
	        num11 = buffer[? "Target"]
			user = buffer[? "User"]
			stat= buffer[? "Status Num"]
			scr_targeted_status(stat,num11,user);
		break;
		case "Ammo": // FIX LATER, IMPLEMENT REAL AMMO
			num12 = buffer[? "Num"]
			global.players[num12].ammo = buffer[? "Ammo"]
			if(global.players[num12].ammo > global.players[num12].maxAmmo)
				global.players[num12].maxAmmo = global.players[num12].ammo
		break;
		case "Open Gates":
			//audio_play_sound(snd_dash,1,false);
			instance_create(0,0,obj_music);
			ball_game.startingSound = true;
		break;
		case "Swap":
			num = buffer[? "Num"]
			if(num == ball_player.num) {
				ball_player.x = buffer[? "X"]
				ball_player.y = buffer[? "Y"]
			}
		break;
		case "Thrown": //get thrown by toss grab 
			num = buffer[? "Num"]
			xp = buffer[? "X"]
			yp = buffer[? "Y"]
			throwSpd = 20;
			if(ball_player.tossGrabbed > 0) { //player gets thrown
				with(ball_player) {
					throwTime = other.throwSpd;
					global.slow = 0;
					upSpd = 9;
					grav = upSpd * 2/throwTime
					ball_game.alarm[7] = throwTime;
					global.stun = throwTime;
					speed = 0;
					global.invincibility = throwTime + 2;
					hspeed = (other.xp-x)/throwTime;
					vspeed = (other.yp-y)/throwTime;
				}
			}
			with(ball_other) { //others get thrown
				if(tossGrabbed > 0) {
					throwTime = other.throwSpd;
					upSpd = 9;
					grav = upSpd * 2/throwTime
				}
			}
		break;
		case "Loadout": //recieve loadouts
			num = buffer[? "Num"]
			index2 = buffer[? "Slot"]
			spr = buffer[? "Ability"]
			if(num == ball_player.num)
				ball_player.loadoutUnseen = true;
			if(index2 < 4) { //update one of your ability slots
				global.loadout[num,index2] = spr;
				if(global.teamNum[num] == global.teamNum[ball_player.num]) //if on same team, update known loadouts
					global.knownLoadout[num,index2] = spr;
			}
			else if(index2 == 4) {
				if(global.loadout[num,4] == 0)
					global.loadout[num,4] = 1
				else
					global.loadout[num,4] = spr;
				if(global.teamNum[num] == global.teamNum[ball_player.num] || global.teamNum[ball_player.num] == 0) //if on same team, update known loadouts
					global.knownLoadout[num,index2] = spr;
			}
			else { //add new passive
				global.loadoutSize[num]++;
				global.loadout[num,global.loadoutSize[num]] = spr;
				if(global.teamNum[num] == global.teamNum[ball_player.num] || global.teamNum[ball_player.num] == 0) //update known loadout 
					global.knownLoadout[num,global.loadoutSize[num]] = spr;
				else
					global.knownLoadout[num,global.loadoutSize[num]] = 0;
					
			}
		break;
		case "Extra Shit":
			num = buffer[? "Num"]
			if(num == ball_player.num) {
				dmg = buffer[? "Dmg"]
				killer =buffer[? "Killer"]
				ad = buffer[? "Ad"]
				scr_damage(dmg,killer,ad);
			}
			
		break;
		case "Airborne": //get thrown by toss grab 
			num = buffer[? "Num"]
			xp = buffer[? "X"]
			yp = buffer[? "Y"]
			throwSpd = 20;
			if(ball_player.num == num) { //player gets thrown
				with(ball_player) {
					throwTime = other.throwSpd;
					global.slow = 0;
					upSpd = 9;
					grav = upSpd * 2/throwTime
					ball_game.alarm[7] = throwTime;
					global.stun = throwTime;
					speed = 0;
					global.invincibility = throwTime + 2;
					hspeed = (other.xp-x)/throwTime;
					vspeed = (other.yp-y)/throwTime;
				}
			}
			with(ball_other) { //others get thrown
				if(num == other.num) {
					throwTime = other.throwSpd;
					upSpd = 9;
					grav = upSpd * 2/throwTime
				}
			}
		break;
		case "Message": //get message
			num = buffer[? "Num"]
			txt = buffer[? "Message"]
			if(global.teamNum[num] = global.teamNum[ball_player.num] || string_copy(txt,1,2) == "/a") {
				with(ball_message) {
					y -= 60;
				}
				ins = instance_create(20,650,ball_message)
				ins.num = num;
				ins.txt = txt;
			}
		break;
		case "Damage Dealt": //get damage dealt
			dealer = buffer[? "Dealer"]
			receiver =  buffer[? "Target"]
			dmg = buffer[? "Amount"]
			global.players[dealer].totalDamage += dmg;
			if(dealer == ball_player.num) {
				scr_deal_damage(receiver,dmg,buffer[? "Ability"]);
			}
		break;
		case "Monster Respawn":
			monsNum = buffer[? "Num"];
			with(obj_monster) {
				if(nameNum == other.monsNum) {
					image_alpha = 1;
					alarm[0] = 1;
				}
			}
		break;
		case "Extra Shit 2":
			gunName = buffer[? "Gun Name"];
			gunNum = buffer[? "Gun Num"];
			gunObj = global.players[gunNum].gun;
			scr_gunVisual(gunName,gunObj);
		break;
	}
	}

}
