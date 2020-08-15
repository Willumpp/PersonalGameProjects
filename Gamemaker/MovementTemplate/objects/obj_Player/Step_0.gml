/// @description Player Step

scr_PlayerMovement();

scr_PlayerCollision();

//Revert Jump Number
if (scr_CollisionCheck(x,y+1,obj_Tags.floors)) { jumpsLeft = totalJumps; }