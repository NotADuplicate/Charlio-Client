/// @description Do music
global.musVolume = 1;
global.music = audio_play_sound(mus_ballIntro,0,false,0);
audio_sound_gain(global.music,global.musVolume,150);
introMusic = true;
timer = 11; //seconds
track = mus_ballIntro;