/// @description Push and die
alarm[2] = 1;
mx = other.x;
my = other.y;
scr_damage(1,other.num);

///Fill buffer
/*if(hp > 7) {
    buffer_seek(obj_client.buffer, buffer_seek_start, 0);
    buffer_write(obj_client.buffer, buffer_u8, 6);
    buffer_write(obj_client.buffer, buffer_u8, other.num);
    buffer_write(obj_client.buffer, buffer_u8, dmg);
    network_send_packet(obj_client.socket,obj_client.buffer,buffer_tell(obj_client.buffer));
}

/* */
/*  */
