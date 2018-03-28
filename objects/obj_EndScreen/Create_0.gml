/// @description Insert description here
// You can write your code in this editor
if (global.currentScore >= 99)
{
	audio_play_sound(EZ,1, false);
	image_index = 0;
}
else
{
	audio_play_sound(BumBumBumm,1, false);
	image_index = 1;
}
