/// @description Simple mode
//global.simple = false;
if(global.simple) {
	obj_search.x = 9000;
	with(inst_utility) { //destroy the old
		instance_destroy();
	}
	simpleAbilities = [choose_molotov,choose_rocketBlast,choose_block,choose_cleaver,choose_flare,choose_flash,choose_dash,choose_reflect,choose_dart,choose_ghost,choose_bloodShot,choose_healBomb,choose_finisher,choose_shuriken,choose_fireAxe,choose_pierce]
	i = 0;
	while(i < array_length(simpleAbilities)){
		xPos = 58 + ((i) mod 4)*140
		yPos = 4155 + 95*floor((i/4))
		instance_create(xPos,yPos,simpleAbilities[i])
		i++
	}
	instance_destroy(passive_charge);
	instance_destroy(passive_bushBoots);
	instance_destroy(passive_KBoots);
	instance_destroy(passive_overheal);
	instance_destroy(passive_knockback);
	instance_destroy(passive_manaSus);
	instance_destroy(passive_ammoSeeing);
	instance_destroy(passive_size);
	instance_destroy(passive_slippery);
	instance_destroy(passive_invis);
	instance_destroy(passive_sponge);
	instance_destroy(passive_ultimate);
	instance_destroy(choose_curve);
	instance_destroy(choose_void);
	instance_destroy(choose_pistol);
	instance_destroy(ins_sort);
}