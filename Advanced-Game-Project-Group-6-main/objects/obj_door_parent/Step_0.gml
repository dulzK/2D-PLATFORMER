/// @description Insert description here

var _spriteLength = sprite_get_number(sprite_index);

if (trigger == true) //if the button is being pressed
{
	mask_index = spr_empty;
	
	image_speed = 1; //play the animation normally
	
	if (image_index >= _spriteLength-1) //if the end of the animation is reached
	{
		image_speed = 0; //stop playing the animation
	}
}
else //if the button is not being pressed
{
	mask_index = sprite_index;
	
	image_speed = -1; //play the animation in reverse
	
	if (image_index <= 0.5) //if the start of the animation is reached
	{
		image_speed = 0; //stop playing the animation
	}
}