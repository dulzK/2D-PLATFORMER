/// @description Insert description here

view_enabled = true; //enabled the camera view
view_visible[0] = true; //make the camera view visible

camera = view_camera[0]; //set the camera view to a camera variable
camera_set_view_size(camera, RES.WIDTH, RES.HEIGHT) //resize the camera

followInst = obj_player; //the instance the camera should follow

cameraSpeed = 5; //the speed the camera tracks the player (smaller is faster)

xMoveTo = xstart; //the coordinates the camera should move to
yMoveTo = ystart;