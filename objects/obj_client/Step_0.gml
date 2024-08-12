/// @description Ping server every second
if(global.connected) {
	if(pingTime > 0)
		pingTime -= (delta_time/1000000)
	else {
		node_send(buffer,"eventName","Ping","Num",index,"Ping",ping)
		pingSet = current_time;
		pingTime = 1;
	}
}