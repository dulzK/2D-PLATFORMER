/// @description Insert description here

if (place_meeting(x, y - 1, obj_player_parent)) //check if the player will collide with a wall
{
	pressed = true;
}
else
{
	pressed = false;
}

if (linkedInst != noone)
{
	linkedInst.trigger = pressed;
}