/// @description Insert description here
// You can write your code in this editor

if (!isHit && isInAnimation)
{
	audio_play_sound(doink,1, false);
	isHit = true;
	imageLoopCounter = 0;
	//increment score
	global.currentScore += 5;
}
else
{
	global.currentScore -= 1;
	//decrement score
}
