/// @description Sort
if(selected) {
	order = 1;
	with(inst_utility) {
		if(string_pos(string_lower(keyboard_string),string_lower(utility)) == 0) {
			x = -100;
			y = 0;
		}
		else {
			x = 52 + ((other.order-1) mod 10)*59
			y = 4110 + 65*floor(other.order/10 - 0.01)
	//	}
			order = other.order;
			other.order++;
			drawOnce = 2;
		}
	}
	obj_shop.wipe = true;
}