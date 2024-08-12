/// @description Initialize Client
global.serverip = get_string("IP adress:", "26.31.228.124");
socket = network_create_socket(network_socket_udp)
var spec = global.spectator;
global.spectator = false;
node_send(buffer,"eventName","Connect","spectator",spec);
global.spectator = spec;
global.spectating = spec;
if(spec)
	index = 0;


	show_debug_message("Client tries to connect")
pingSet = current_time;
message = "penis";
	global.connected = false;