/// @description Possess
var x_mouse = mouse_x;
var y_mouse = mouse_y;

possessed = false;

//Possess new instance
var object = noone;

//Check if instance is in movable list
for (var i = 0; i < array_length_1d(obj_Tags.movable); i++) { 
	//if (place_meeting(x_mouse,y_mouse,obj_Tags.movable[i])) { 
	var instance_TEMP = instance_nearest(x_mouse,y_mouse,obj_Tags.movable[i]); //Get closest
	
	if (instance_exists(instance_TEMP)) {
		var select_x = instance_TEMP.x;
		var select_y = instance_TEMP.y;
		
		//If in range select it
		if (point_distance(x_mouse,y_mouse,select_x,select_y) < selectDistance) { object = instance_TEMP; }
	}
}

if (object != noone) {
	//Reset other movables
	for (var i = 0; i < array_length_1d(obj_Tags.movable); i++) {
		with (obj_Tags.movable[i]) {
			possessed = false;
		}
	}
	if (instance_exists(possInstance)) {
		with (possInstance) {
			following = false;
		}
	}
	
	//Select instance
	//var instance = scr_PossessionSelect(select_x,select_y,object);
	var instance = object;
	
	if (instance == possInstance and instance != noone) { instance.possessed = true; }

	//Upon possession
	if (instance != possInstance and instance != noone) {		
		//Reset variables
		with (instance) {
			//Stop pathfinding
			lastPos_x = 0;
			lastPos_y = 0;
			relocating = false;
			following = false;
			path_end();
	
			hspeed = 0;
			vspeed = 0;
		}
		
		instance.possessed = true;
		possInstance = instance;
		maxSpd = instance.moveSpeed;
	}
}