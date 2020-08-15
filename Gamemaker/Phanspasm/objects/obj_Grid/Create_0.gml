/// @description Grid Create

cellW = 32;
cellH = 32;

//Dumber of cells on grid w/h
var hcells = room_width div cellW;
var vcells = room_height div cellH;

//Create grid
global.grid = mp_grid_create(0, 0, hcells, vcells, cellW, cellH);

//Add every collision tile to pathfinding grid
mp_grid_add_instances(global.grid, obj_Tags.collidable, false);

var tilemap = layer_tilemap_get_id("ts_Collision");
var tileSize = 32;

//Loop through every cell spot in room
for (var i = 0; i <= room_width; i += tileSize) { //Every column
	for (var j = 0; j <= room_height; j += tileSize) { //Every row
		if (tilemap_get_at_pixel(tilemap,i,j) > 0) {
			mp_grid_add_cell(global.grid,i/tileSize,j/tileSize); //Add cell to grid
		}
	}
}