/// @description Player Movement

#region // ----Horizontal Movement----
var dir_X = keyboard_check(ord("D")) - keyboard_check(ord("A"));

if (dir_X != 0) {
	var mxHSpd = maxSpd*dir_X;
	
	//Accelerate
	if ((dir_X == -1 and hspd > mxHSpd) or (dir_X == 1 and  hspd < mxHSpd))  { hspd += acceleration * dir_X; }
}
//Deccelerate
if (dir_X == 0) { hspd -= hDecc * sign(hspd); }

//Move
hspeed = hspd;

#endregion


#region // ----Vertial Movement----
var jmpDecc = vDecc;

if (keyboard_check_pressed(ord("W")) and jumpsLeft-1 > 0) { 
	vspeed = jumpSpeed;  //Jump action
	jumpsLeft -= 1; //Reduce jump num (reverted in player collision)
}

//Deccelerate
//if (keyboard_check(ord("W"))) { jmpDecc /= 2; }
if (vspeed < maxFallSpd) { vspeed += jmpDecc; } //Decc action

#endregion
