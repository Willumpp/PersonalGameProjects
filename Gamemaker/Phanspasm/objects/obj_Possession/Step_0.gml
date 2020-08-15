//@description Possession step

//If there is a possessed instance
if (instance_exists(obj_Possession.possInstance)) {
	//Movement
	scr_PlayerMovement();

	//Collision
	scr_PlayerCollision();
}