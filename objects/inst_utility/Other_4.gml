/// @description Handle decimals
order = 0;
if(global.gameMode == "Royale") {
	if(random_range(0,1) > .6) {
		ins = instance_find(royale_abilitySpawn,id mod instance_number(royale_abilitySpawn))
		x = ins.x;
		y = ins.y;
		if(place_meeting(x,y,inst_utility))
			instance_destroy()
	}
}

drawOnce = 0;

/*
if(statOrder[2] > 0)
	statOrder[2]--;
i = 0;
repeat(9) {
	if(statOrder[i] mod 1 != 0) {
		with(inst_utility) {
			if(statOrder[other.i] > other.statOrder[other.i]) {
				statOrder[other.i]++;
			}
		}
		statOrder[i] = floor(statOrder[i])+1
	}
	i++;
}
