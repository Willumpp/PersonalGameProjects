/// @description Enemy Create

//Create path
path = path_add();
lastPos_x = x;
lastPos_y = y;
viewRange = 600;
relocating = false;
following = false;
target = noone;

//Rotation
angle = 0;
projectileAngle = 0;

decceleration = 0.25;
canShoot = true;
ammo = 5;