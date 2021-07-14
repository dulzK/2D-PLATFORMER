
#macro TILE_SIZE 16 //the size of the tiles

enum RES //the game screen information
{
	WIDTH = 320,
	HEIGHT = 180,
	SCALE = 4,
}

enum PLAYER_STATE //the animation state of the player
{
	IDLE,
	RUN,
	JUMP,
	FALL,
}

enum ENTITY_TYPE
{
	WALL,
	DOOR,
	BUTTON,
	SPIKE,
<<<<<<< HEAD
	BODY,
=======
	ENEMY,
>>>>>>> 7b4cbf6dfdcf0d084a951e3f5d7ef382d5efcf71
}

enum DOOR_STATE
{
	OPEN,
	CLOSE,
}