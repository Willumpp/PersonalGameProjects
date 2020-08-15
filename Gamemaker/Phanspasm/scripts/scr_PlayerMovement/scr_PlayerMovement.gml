var hspd = possInstance.hspeed;
var vspd = possInstance.vspeed;

#region // ----Horizontal Movement----
if ((scr_KeyRight() or scr_KeyLeft())) {
	hCondition = 0;

	if (scr_KeyLeft()) { hCondition -= 1; }
	if (scr_KeyRight()) { hCondition += 1; }
	var mxHSpd = maxSpd*hCondition;
	
	//Accelerate
	if ((hCondition == -1 and hspd > mxHSpd) or (hCondition == 1 and  hspd < mxHSpd))  { hspd += acceleration * hCondition; }
}
else { 
	//Deccelerate
	if ((hCondition == -1 and hspd < 0) or (hCondition == 1 and hspd > 0)) { hspd -= decceleration * hCondition; }
	else { hspd = 0; }
}

if (hCondition == 0) { hspd -= decceleration * sign(hspd); }
#endregion

#region // ----Vertial Movement----
if (scr_KeyUp() or scr_KeyDown()) {
	vCondition = 0;

	if (scr_KeyUp()) { vCondition -= 1; }
	if (scr_KeyDown()) { vCondition += 1; }
	var mxVSpd = maxSpd*vCondition;
	
	//Accelerate
	if ((vCondition == -1 and vspd > mxVSpd) or (vCondition == 1 and vspd < mxVSpd))  { vspd += acceleration * vCondition; }
}
else { 
	//Deccelerate
	if ((vCondition == -1 and vspd < 0) or (vCondition == 1 and vspd > 0)) { vspd -= decceleration * vCondition; }
	else { vspd = 0; }
}

if (vCondition == 0) { vspd -= decceleration * sign(vspd); }
#endregion

//Update speeds
possInstance.hspeed = hspd;
possInstance.vspeed = vspd;