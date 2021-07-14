/// @description Initialize variables

//properties
moveSpeed = 2; //the player's run speed
jumpSpeed = 5; //the player's jump force/speed

gravStrength = 0.2; //the strength of gravity pulling the player
gravMax = 10; //the maximum amount of gravity

//variables
playerState = PLAYER_STATE.IDLE; //the player's current state

hSpeed = 0; //horizontal speed
vSpeed = 0; //vertical speed

holdingInst = noone;

lastDir = 1; //which direction the player was last facing (used for animation purposes)

image_alpha = 0.5;