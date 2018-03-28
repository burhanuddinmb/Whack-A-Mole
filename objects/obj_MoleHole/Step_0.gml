/// @description Insert description here
// You can write your code in this editor


if (!isInAnimation)
{
	image_index = 0;
	if (irandom_range(1, 200) == 5)
	{
		audio_play_sound(Heehee,2, false);
		isInAnimation = true;
	}
}
else
{
	imageLoopCounter++;
	if (!isHit)
	{
		if (imageLoopCounter >= 0 && imageLoopCounter < speedOfMovement)
		{
			image_index = 1;
		}
		else if (imageLoopCounter >= speedOfMovement  && imageLoopCounter < speedOfMovement*2)
		{
			image_index = 2;
		}
		else if (imageLoopCounter >= speedOfMovement*2  && imageLoopCounter < speedOfMovement*3)
		{
			image_index = 3;
		}
		else if (imageLoopCounter >= speedOfMovement*3  && imageLoopCounter < speedOfMovement*4)
		{
			image_index = 4;
		}
		else if (imageLoopCounter >= speedOfMovement*4  && imageLoopCounter < speedOfMovement*5)
		{
			image_index = 3;
		}
		else if (imageLoopCounter >= speedOfMovement*5  && imageLoopCounter < speedOfMovement*6)
		{
			image_index = 2;
		}
		else if (imageLoopCounter >= speedOfMovement*6  && imageLoopCounter < speedOfMovement*7)
		{
			image_index = 1;
		}
		else if (imageLoopCounter >= speedOfMovement*7)
		{
			isInAnimation = false;
			image_index = 0;
			imageLoopCounter = 0;
			global.currentScore -= 10;
		}
	}
	else
	{
		if (imageLoopCounter >= 0 && imageLoopCounter < speedOfMovement/2)
		{
			image_index = 5;
		}
		else if (imageLoopCounter >= speedOfMovement/2 && imageLoopCounter < speedOfMovement)
		{
			image_index = 6;
		}
		else if (imageLoopCounter >= speedOfMovement && imageLoopCounter < speedOfMovement*3/2)
		{
			image_index = 7;
		}
		else if (imageLoopCounter >= speedOfMovement*3/2 && imageLoopCounter < speedOfMovement*3)
		{
			image_index = 8;
		}
		else
		{
			isInAnimation = false;
			image_index = 0;
			isHit = false;
			imageLoopCounter = 0;	
		}
	}
}