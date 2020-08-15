/// @description Camera Step

var player = noone;
if (instance_exists(obj_Possession.possInstance)) {
	player = obj_Possession.possInstance;
	
	// Move view
	var width = camera_get_view_width(view_camera[0]);
	var height = camera_get_view_height(view_camera[0]);
	var pos_x = camera_get_view_x(view_camera[0]);
	var pos_y = camera_get_view_y(view_camera[0]);
	
	//X Borders
	if ((player.x - pos_x) < border_x) { pos_x -= pos_x + border_x - player.x;} //Left
	if ((pos_x + width - player.x) < border_x) { pos_x -= pos_x + width - border_x - player.x;} //Right
	
	//Y Borders
	if ((player.y - pos_y) < border_y) { pos_y -= pos_y + border_y - player.y;} //Left
	if ((pos_y + height - player.y) < border_y) { pos_y -= pos_y + height - border_y - player.y;} //Right

	camera_set_view_pos(view_camera[0],pos_x,pos_y);
}



