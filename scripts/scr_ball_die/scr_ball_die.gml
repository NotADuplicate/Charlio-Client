// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_ball_die(dmg,killer){
				with(ball_player) {
					while(livePass && global.ammo > 0 && ball_player.hp < 1) {
						global.ammo -= 1
						ball_player.hp += 5;
					}
					if(ball_player.hp < 1) {
						global.dead = true; //drop corpse
						/*with(ball_game) {
						    buffer_seek(buffer, buffer_seek_start, 0);
							buffer_write(buffer, buffer_u8, 7);
						    buffer_write(buffer, buffer_u16, ball_player.x);
							buffer_write(buffer, buffer_u16, ball_player.y);
							buffer_write(buffer, buffer_u16, 0);
							buffer_write(buffer, buffer_u16, ball_corpse);
							buffer_write(buffer, buffer_u8, ball_player.num);
							network_send_packet(socket, buffer, buffer_tell(buffer));
						}*/
						scr_cleanse()
						ball_player.moveSpd = global.baseMove
						ball_game.lore = scr_lore();
						x = -1000;
						y = -1000;
						/*if(killer > 0 && killer < 10 && global.players[killer].enraged) { //restore health and stop being enraged on kill
							with(ball_game) {
							    buffer_seek(buffer, buffer_seek_start, 0);
								buffer_write(buffer, buffer_u8, 11);
							    buffer_write(buffer, buffer_u8, killer);
								buffer_write(buffer, buffer_u8, 7);
								network_send_packet(socket, buffer, buffer_tell(buffer));
							}			
						}*/
						ball_player.respawnTimer = global.respawn;
						view_set_visible(0,false)
						view_set_visible(1,true)
					if(killer > 10)
						killer = ball_player.num
					with(ball_game) {
						node_send(buffer,"eventName","Death","Target",ball_player.num,"Killer",killer)
					}
					}
				}
}