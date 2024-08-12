/// @description Burn
if(global.teamNum[other.num] != global.teamNum[num] || other.num == num) {
	scr_damage(1.5,other.num,false);
	if(frost > 0) {
		frost = 0;
		global.slow = 1;
	}
	if(burn < 200 && spellShield == 0) {
		burn += 5;
		burnNum = other.num
	}
}