/// @description Enemy Create

//Create path
path = path_add();
lastPos_x = 0;
lastPos_y = 0;
relocating = false;
following = false;

health_Obj = 3;

//Rotation
angle = 0;
projectileAngle = 0;

decceleration = 0.25;
canShoot = true;