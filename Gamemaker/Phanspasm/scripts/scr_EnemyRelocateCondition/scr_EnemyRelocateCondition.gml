//Relocating
for (var i = 0; i < array_length_1d(obj_Tags.movable); i++) {
	var enemy = obj_Tags.movable[i]
	
	if (place_meeting(x,y,enemy)) {
		//Dont relocate if other enemy is
		var inst = instance_place(x,y,enemy);
		
		if (inst.relocating == false and possessed == false and inst.possessed == false) {
			scr_EnemyRelocate(); //Relocate
		}
	}
}