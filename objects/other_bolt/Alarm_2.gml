/// @description Link

if(instance_exists(obj_player)) {
    with(obj_other) {
        if(num == other.num) {
            other.link = self;
        }
    }
    with(obj_player) {
        if(num == other.num) {
            other.link = self;
        }
    }
}
else
    instance_destroy();

///Start the fire time
/*if(global.game == "Ball") {
	alarm[0] = round(29/fire);
}