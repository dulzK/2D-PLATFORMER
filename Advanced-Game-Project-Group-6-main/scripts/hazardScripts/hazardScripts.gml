//These scripts handle all the player interactions with hazards

function killPlayer() //kills the player and respawns them
{
	instance_create_layer(x, y, "Instances", obj_player_body); //create a body object at the player's location
	
	x = obj_spawn_point.x; //return the player to the spawn point
	y = obj_spawn_point.y;
}

function killEnemy()
{
	instance_destroy(obj_enemy_flying);
}