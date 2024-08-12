/// @description Regen some health
if(decay > 0)
	scr_damage(5+regenRate,decayNum,false);
else if(hp < maxhp) {
	hp += regen + (regenRate-1)*4;
	if(hp > maxhp) {
		if(overheal == false)
			hp = maxhp;
	}
}
if(poison > 0) {
	scr_damage(poisonDmg,poisonedNum,false)
	poisonDmg += 0.9;
}
//else
	//poisonDmg = 0;
alarm[3] = 30;
if(true)  {
			with(ball_game) {
			   /* buffer_seek(buffer, buffer_seek_start, 0);
				buffer_write(buffer, buffer_u8, 24);
			    buffer_write(buffer, buffer_u8, ball_player.num);
				buffer_write(buffer,buffer_u16, round(other.hp))
				network_send_packet(socket, buffer, buffer_tell(buffer));*/
				
		/*var data = ds_map_create();
		data[? "eventName"] = "Player Health"
		data[? "Num"] = ball_player.num
		data[? "Hp"] = round(ball_player.hp)
		buffer_seek(buffer,buffer_seek_start,0)
		buffer_write(buffer,buffer_text,json_encode(data))
		network_send_packetudp(socket,buffer,buffer_tell(buffer))*/
		node_send(buffer,"eventName","Player Health","Num",ball_player.num,"Hp",round(ball_player.hp))
				
			}
}

