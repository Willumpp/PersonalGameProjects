//Random position in range of enemy
var randChoice = [-obj_Grid.cellW*3,obj_Grid.cellW*3];
var rand_x = randChoice[irandom_range(0,1)]; 
var rand_y = randChoice[irandom_range(0,1)];
var cellSize = obj_Grid.cellW;

//Round coordinate to fit grid
var cellPos_x = (other.x div cellSize)*cellSize + rand_x;
var cellPos_y = (other.y div cellSize)*cellSize + rand_y;

//If path has ended and colliding, move away from enemy
if (following == false) {
	if (mp_grid_path(global.grid, path, x, y, cellPos_x, cellPos_y, true)) {
		path_start(path, moveSpeed, path_action_stop, false); //Move
		relocating = true;
	}
}

