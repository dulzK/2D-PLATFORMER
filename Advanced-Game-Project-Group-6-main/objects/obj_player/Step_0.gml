/// @description Update Loop

//get keypress information (1 if key is pressed, 0 if not)
var _right = keyboard_check(vk_right) or keyboard_check(ord("D"));
var _left = keyboard_check(vk_left) or keyboard_check(ord("A"));
var _jump = keyboard_check(vk_up) or keyboard_check(ord("W")) or keyboard_check(vk_space);

//set input axis (get direction of movement)
var _inputX = _right - _left;

hSpeed = _inputX * moveSpeed;

if (hSpeed != 0) //if the player is moving record their last direction
{
	lastDir = sign(hSpeed);
}

if (vSpeed < gravMax) //prevents the player from falling too fast
{
	vSpeed += gravStrength; //apply gravity to the player's speed
}

//COLLISIONS
var _inst = instance_place(x, y + 1, obj_collide);

if (_inst != noone) //check if the player will collide with a wall
{
	vSpeed = _jump * -jumpSpeed;
	
	if (hSpeed == 0) //if the player is not moving horizontally
	{
		playerState = PLAYER_STATE.IDLE;	
	}
	else
	{
		playerState = PLAYER_STATE.RUN;	
	}
}
else
{
	if (sign(vSpeed) == 1) //if the player is moving down
	{
		playerState = PLAYER_STATE.FALL;	
	}
	else //if the player is moving up
	{
		playerState = PLAYER_STATE.JUMP;
	}
}

//horizontal collisions
var _inst = instance_place(x + hSpeed, y, obj_collide);

if (_inst != noone) //check if the player will collide with a wall
{
	while(!place_meeting(x + sign(hSpeed), y, obj_collide)) //move the player 1 pixel at a time till they touch the wall
	{
		x += sign(hSpeed);	
	}
	
	switch (_inst.type) //specific collisions based on instance type
	{
		case ENTITY_TYPE.BUTTON:
			y-=2;
			break;
		case ENTITY_TYPE.DOOR:
			if (!_inst.trigger) //if the door isn't open
			{
				show_debug_message("door closed");
				hSpeed = 0;
			}
			show_debug_message("door open");
			break;
		case ENTITY_TYPE.SPIKE:
			killPlayer();
			break;
		case ENTITY_TYPE.WALL:
		show_debug_message("wall");
			hSpeed = 0;
			break;
<<<<<<< HEAD
		case ENTITY_TYPE.BODY:
			if (_inst != holdingInst)
			{
				hSpeed = 0;
			}
=======
		case ENTITY_TYPE.ENEMY:
			killPlayer();
>>>>>>> 7b4cbf6dfdcf0d084a951e3f5d7ef382d5efcf71
			break;
	}
}
x += hSpeed;

//vertical collsions

var _inst = instance_place(x, y + vSpeed, obj_collide);

if (_inst != noone) //check if the player will collide with a wall
{
	while(!place_meeting(x, y + sign(vSpeed), obj_collide)) //move the player 1 pixel at a time till they touch the wall
	{
		y += sign(vSpeed);	
	}
	
	switch (_inst.type) //specific collisions based on instance type
	{
		case ENTITY_TYPE.BUTTON:
			vSpeed = 0;
			show_debug_message("button");
			break;
		case ENTITY_TYPE.SPIKE:
		show_debug_message("spike");
			killPlayer();
			break;
		case ENTITY_TYPE.WALL:
		show_debug_message("wall");
			vSpeed = 0;
			break;
<<<<<<< HEAD
		case ENTITY_TYPE.BODY:
		show_debug_message("body");
			if (_inst != holdingInst)
			{
				vSpeed = 0;
			}
=======
		case ENTITY_TYPE.ENEMY:
			killPlayer();
>>>>>>> 7b4cbf6dfdcf0d084a951e3f5d7ef382d5efcf71
			break;
	}
}
y += vSpeed;

<<<<<<< HEAD
//grabbing objects
if (keyboard_check_pressed(ord("E")))
{
	if (holdingInst == noone)
	{
		if (instance_exists(obj_player_body))
		{
			var _inst = instance_nearest(x, y, obj_player_body);
		
			if (distance_to_object(_inst) <= 6)
			{
				holdingInst = _inst;	
			}
		}
	}
	else
	{
		holdingInst = noone;	
	}
}

if (holdingInst != noone)
{
	holdingInst.x = x + (10 * lastDir);
	holdingInst.y = y;
}

=======
if (place_meeting(x, y + vSpeed, obj_enemy_flying))
{
	//killPlayer();
}
>>>>>>> 7b4cbf6dfdcf0d084a951e3f5d7ef382d5efcf71
