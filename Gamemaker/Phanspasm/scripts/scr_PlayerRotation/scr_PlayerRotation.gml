if (possessed == true) {
	var angle_NEW = point_direction(x,y,mouse_x,mouse_y); //Point to mouse
	return angle_NEW //Rotate
}
else if (following == true and instance_exists(target)) {
	var possInst = target;
	
	//Point to target
	var angle_NEW = point_direction(x,y,possInst.x,possInst.y);
	return angle_NEW;
}
else if (x != lastPos_x and y != lastPos_y) {
	var angle_NEW = point_direction(x,y,lastPos_x,lastPos_y);
	return angle_NEW;
}

return angle;
	