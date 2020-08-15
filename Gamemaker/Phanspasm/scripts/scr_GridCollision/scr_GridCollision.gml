var xx = argument0;
var yy = argument1;

//Get x position
var xPos = x;
var yPos = y;

//Update box collision
x = xx;
y = yy;

//Check x axis
var x_meeting = (mp_grid_get_cell(global.grid, bbox_right div obj_Grid.cellW, bbox_top div obj_Grid.cellH)) or
				(mp_grid_get_cell(global.grid, bbox_left div obj_Grid.cellW, bbox_top div obj_Grid.cellH));

//Check y axis
var y_meeting = (mp_grid_get_cell(global.grid, bbox_right div obj_Grid.cellW, bbox_bottom div obj_Grid.cellH)) or
				(mp_grid_get_cell(global.grid, bbox_left div obj_Grid.cellW, bbox_bottom div obj_Grid.cellH));
				
//Move back
x = xPos;
y = yPos;

return x_meeting or y_meeting;