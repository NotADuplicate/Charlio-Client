/// @description Insert description here
// You can write your code in this editor
if(other.num != num || active) {
	var heals = scr_ability_stats("heal","Healing")
	scr_heal(heals,num);
	instance_destroy()
}