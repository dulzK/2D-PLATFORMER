/// @description Update Loop

//PLAYER DETECTION & TRACKING
if (distance_to_object(obj_player) > sight) 
{
	hSpeed = 0;
	vSpeed = 0;
}
if (place_empty(x + hSpeed, y + vSpeed) && distance_to_object(obj_player) < sight) 
{
    if (x < obj_player.x-8)
	{
         hSpeed = moveSpeed;
    }
    if (x > obj_player.x-8)
	{
         hSpeed = -moveSpeed;
    }
	if (y < obj_player.y-8)
	{
         vSpeed = moveSpeed;
    }
    if (y > obj_player.y-8)
	{
         vSpeed = -moveSpeed;
    }
}

// COLLISIONS

//horizontal collisions
var _inst = instance_place(x + hSpeed, y, obj_collide);

if (_inst != noone)
{
	while(!place_meeting(x + sign(hSpeed), y, obj_collide))
	{
		x += sign(hSpeed);	
	}
	
	switch (_inst.type) //specific collisions based on instance type
	{
		case ENTITY_TYPE.BUTTON:
			hSpeed = 0;
			break;
		case ENTITY_TYPE.DOOR:
			hSpeed = 0;
			break;
		case ENTITY_TYPE.SPIKE:
			killEnemy();
			break;
		case ENTITY_TYPE.WALL:
			hSpeed = 0;
			break;
		case ENTITY_TYPE.ENEMY:
			break;
	}
}
x += hSpeed;

//vertical collsions
var _inst = instance_place(x, y + vSpeed, obj_collide);

if (_inst != noone)
{
	while(!place_meeting(x, y + sign(vSpeed), obj_collide))
	{
		y += sign(vSpeed);	
	}
	
	switch (_inst.type) //specific collisions based on instance type
	{
		case ENTITY_TYPE.BUTTON:
			vSpeed = 0;
			break;
		case ENTITY_TYPE.DOOR:
			vSpeed = 0;
			break;
		case ENTITY_TYPE.SPIKE:
			killEnemy();
			break;
		case ENTITY_TYPE.WALL:
			vSpeed = 0;
			break;
		case ENTITY_TYPE.ENEMY:
			break;
	}
}
y += vSpeed;