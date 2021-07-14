/// @description Insert description here

if (sprite_index == spr_player_death)
{
	if (image_index == sprite_get_number(sprite_index) - 1)
	{
		sprite_index = spr_player_body;
	}
}

if (!place_meeting(x, y + 1, obj_collide))
{
	y++;
}