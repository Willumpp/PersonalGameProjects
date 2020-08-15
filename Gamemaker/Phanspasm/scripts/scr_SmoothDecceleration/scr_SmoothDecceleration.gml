//----Smooth decceleration
	
//Horizontal
if ((hspeed > 0 and sign(hspeed) > 0) or 
	(hspeed < 0 and sign(hspeed < 0))) 
{ hspeed -= decceleration * sign(hspeed); } 
else { hspeed = 0; }
	
//Vertical
if ((vspeed > 0 and sign(vspeed) > 0) or 
	(vspeed < 0 and sign(vspeed < 0))) 
{ vspeed -= decceleration * sign(vspeed); } 
else { vspeed = 0; }