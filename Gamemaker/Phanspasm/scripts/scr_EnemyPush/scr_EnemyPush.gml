if (x == other.x and y == other.y) {
	scr_EnemyCollision(sign(other.id-id),0,false);
}

var dir = point_direction(other.x,other.y,x,y);
var hspd = lengthdir_x(0.5,dir);
var vspd = lengthdir_y(0.5,dir);
scr_EnemyCollision(hspd,vspd,false); //Move if not colliding with wall