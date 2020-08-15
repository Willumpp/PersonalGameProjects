var target = argument0;
var viewRange = argument1;
var canSee = false;

//Check if seeing opaque objects
var opaques = obj_Tags.opaque;
for (var i = 0; i < array_length_1d(opaques); i++) {
	if (collision_line(x,y,target.x,target.y,opaques[i],false,true) <= 0) { canSee = true; }
}


//If target is visible and in range and only can see player
if (canSee == true and distance_to_object(target) < viewRange) {
	return true;
}
else { return false; }