/// @description Update Camera

//Get Destination
if (instance_exists(followInst)) //if the camera target exists
{
	xMoveTo = followInst.x; //where the camera should move
	yMoveTo = followInst.y;
}

//Move Camera
x += floor((xMoveTo - x) / cameraSpeed); //floors the number to prevent weird camera bugs (ie "stuttering" movement)
y += floor((yMoveTo - y) / cameraSpeed);

x = clamp(x, RES.WIDTH/2, room_width - RES.WIDTH/2); //clamps the camera so it stays in the game room's boundrys
y = clamp(y, RES.HEIGHT/2, room_height - RES.HEIGHT/2);

//Update Camera View
camera_set_view_pos(camera, x - RES.WIDTH/2, y - RES.HEIGHT/2);