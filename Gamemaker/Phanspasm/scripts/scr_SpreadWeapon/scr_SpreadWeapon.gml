var projectile_Inp = argument0;
var travelSpeed = argument1;
var damage = argument2;
var accuracy = argument3;
var projNum = argument4;
var projSpread = argument5;

var projAngle = projSpread / projNum; //Find bullet per angle

//Loop based on number of projectiles
for (i = 1; i <= projNum; i++) {
	//Create projectile
	var projectile = instance_create_depth(x,y,1000,obj_Projectile);
	projectile.sprite_index = projectile_Inp;

	//Variables
	projectile.damage = damage;
	projectile.parent = id;

	//Rotate randomly
	var offset = irandom_range(-accuracy/2,accuracy/2);
	projectile.image_angle = angle + offset - (projSpread/2) + (i * projAngle);
	projectile.direction = projectile.image_angle;

	//Move
	projectile.speed = travelSpeed;
}

//Take ammo
if (ammo > 0 and possessed == true) { ammo -= 1; }

//Reloading
canShoot = false;
alarm[0] = room_speed * reloadSpeed;