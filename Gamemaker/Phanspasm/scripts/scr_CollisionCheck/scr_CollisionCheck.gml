var xPos = argument0;
var yPos = argument1;
var array = argument2;

//Return if colliding with collider tag
for (var i = 0; i < array_length_1d(array); i++) { 
	if (place_meeting(xPos,yPos,array[i])) {
		return true;
	}
}

return false;