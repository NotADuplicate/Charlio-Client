/// @description Show progress
if(index > 0) {
	sprite_index = spr_reviveBlue;
	image_index = index;
}
else {
	sprite_index = spr_reviveBlue;
	image_index = abs(index);
}

index -= sign(index)