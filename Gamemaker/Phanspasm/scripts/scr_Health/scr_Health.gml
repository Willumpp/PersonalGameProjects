if (health_Obj <= 0) { 
	if (possessed == true) {
		obj_Possession.possInstance = noone;
		possessed = false;
		
		//Reset Variables
		for (var i = 0; i < array_length_1d(obj_Tags.movable); i++) {
			with (obj_Tags.movable[i]) {
				following = false;
				path_end();
				lastPos_x = x;
				lastPos_y = y;
			}
		}
	}
	instance_destroy(id); 
}