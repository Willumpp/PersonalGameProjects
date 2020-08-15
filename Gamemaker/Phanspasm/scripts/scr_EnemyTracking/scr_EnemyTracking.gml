//Get cell width and height
var cellH = obj_Grid.cellH;
var cellW = obj_Grid.cellW;

//Find player pos on grid
var player = target;
var playerX = ((player.x div cellW)*cellW) + cellW/2;
var playerY = ((player.y div cellH)*cellH) + cellH/2;

//If path is present and can see player
if (scr_LineOfSight(player,viewRange) and instance_exists(obj_Possession.possessed)) {
	relocating = false;
	following = true;
	
	lastPos_x = playerX;
	lastPos_y = playerY;
}
//Go to last seen postition
else if (mp_grid_path(global.grid, path, x, y, lastPos_x, lastPos_y, true) and relocating == false) {
	path_start(path, moveSpeed, path_action_stop, false); //Move along path
	
	following = false;
}
else { path_end(); }