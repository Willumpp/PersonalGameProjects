var x_Pos = argument0;
var y_Pos = argument1;
var object = argument2;

var instanceList = ds_list_create();

//Get target
if (place_meeting(x_Pos,y_Pos,object)) {
	var instance = instance_position(x_Pos,y_Pos,object);
}
if (instance_exists(instance) == false) { topInstance = id; }

var topInstance = instance;

//Check deapth of each instance
while instance_exists(instance) {
	ds_list_add(instanceList, instance);
	instance_deactivate_object(instance);
	
	if (instance.depth < topInstance.depth) {
		topInstance = instance;
	}
	instance = instance_position(x_Pos,y_Pos,object);
}

//Reactivate instances
while (ds_list_size(instanceList) > 0) {
	instance_activate_object(instanceList[| 0]);
	ds_list_delete(instanceList, 0);
}

//Delete list
ds_list_destroy(instanceList);

return topInstance;