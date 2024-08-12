/// @description Toggle ready
if(global.connected = true) {
    if(ready == true) //flip ready
        ready = false;
    else
        ready = true;
	
/*var data = ds_map_create();
		data[? "eventName"] = "Ready"
		data[? "Num"] = index
		data[? "Ready"] = ready
		buffer_seek(buffer,buffer_seek_start,0)
		buffer_write(buffer,buffer_text,json_encode(data))
		network_send_packetudp(socket,buffer,buffer_tell(buffer))*/
	node_send(buffer,"eventName","Ready","Num",index,"Ready",ready)
}

