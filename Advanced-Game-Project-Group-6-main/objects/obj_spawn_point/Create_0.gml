/// @description Init Camera and Player

instance_create_layer(x, y, "Instances", obj_player); //creates the player
instance_create_layer(x, y + TILE_SIZE * 3, "Instances", obj_camera); //creates the camera