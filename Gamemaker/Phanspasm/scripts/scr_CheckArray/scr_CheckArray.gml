var array = argument0;
var value = argument1;

//Return true if value in array
for (var val = 0; val < array_length_1d(array); val++) {
	if (array[val] == value) { return true; }
}

return false;