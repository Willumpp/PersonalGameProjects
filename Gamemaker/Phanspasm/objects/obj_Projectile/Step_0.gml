/// @description Porjectile Step

//Collision
if (tilemap_get_at_pixel(tilemap,bbox_left,bbox_top) or
	tilemap_get_at_pixel(tilemap,bbox_right,bbox_top) or
	tilemap_get_at_pixel(tilemap,bbox_left,bbox_bottom) or
	tilemap_get_at_pixel(tilemap,bbox_right,bbox_bottom)) {
		
	instance_destroy(id); //Destroy self
}

//Projectile damage
var movable = obj_Tags.movable;

//Loop through all movables and test if colliding with
for (var i = 0; i < array_length_1d(movable); i++) {
	if (place_meeting(x,y,movable[i])) {
		
		var inst = instance_place(x,y,movable[i]);
		
		if (inst != parent) { //Cannot attack self
			inst.health_Obj -= damage; //Deal damage 
			instance_destroy(id); //Destroy self
		}
	}
}