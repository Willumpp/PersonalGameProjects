var hspd = possInstance.hspeed;
var vspd = possInstance.vspeed;

var bbox_side;

//----Horizontal collision
var h_Sign = sign(hspd);

if (h_Sign > 0) { bbox_side = possInstance.bbox_right; } 
else { bbox_side = possInstance.bbox_left; }

if (tilemap_get_at_pixel(tilemap,bbox_side+hspd,possInstance.bbox_top+1) != 0 or 
	tilemap_get_at_pixel(tilemap,bbox_side+hspd,possInstance.bbox_bottom-1) != 0)
{
	while (tilemap_get_at_pixel(tilemap,bbox_side+h_Sign,possInstance.bbox_top) == 0 and
		   tilemap_get_at_pixel(tilemap,bbox_side+h_Sign,possInstance.bbox_bottom) == 0) {
			   
		//Update condition
		if (h_Sign > 0) { bbox_side = possInstance.bbox_right; } 
		else { bbox_side = possInstance.bbox_left; }
		
		possInstance.x += sign(hspd)
	}
	possInstance.hspeed = 0;
}


//----Vertical collision
var v_Sign = sign(vspd);

if (v_Sign > 0) { bbox_side = possInstance.bbox_bottom; } 
else { bbox_side = possInstance.bbox_top; }

if (tilemap_get_at_pixel(tilemap,possInstance.bbox_left+1,bbox_side+vspd) != 0 or
	tilemap_get_at_pixel(tilemap,possInstance.bbox_right-1,bbox_side+vspd) != 0)
{
	while (tilemap_get_at_pixel(tilemap,possInstance.bbox_left,bbox_side+v_Sign) == 0 and
	       tilemap_get_at_pixel(tilemap,possInstance.bbox_right,bbox_side+v_Sign) == 0) {
			   
		//Update condition
		if (v_Sign > 0) { bbox_side =possInstance.bbox_bottom; } 
		else { bbox_side = possInstance.bbox_top; }
		
		possInstance.y += sign(vspd)
	}
	possInstance.vspeed = 0;
}

