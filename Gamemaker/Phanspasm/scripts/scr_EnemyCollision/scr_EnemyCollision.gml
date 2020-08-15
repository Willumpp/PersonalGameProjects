var hspd = argument0;
var vspd = argument1;
var resetSpeed = argument2;

//Collision
if (scr_GridCollision(x+hspd,y) == true)
{
	while (scr_GridCollision(x+sign(hspd),y) == false) {
		x += sign(hspd)
	}
	hspd = 0;
	if (resetSpeed == true) { hspeed = 0; }
}

x += hspd;

//Vertical collision
if (scr_GridCollision(x,y+vspd) == true)
{
	while (scr_GridCollision(x,y+sign(vspd)) == false) {
		y += sign(vspd);
	}
	vspd = 0;
	if (resetSpeed == true) { vspeed = 0; }
}  

y += vspd;