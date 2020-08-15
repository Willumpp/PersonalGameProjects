//Player chasing
if (scr_CollisionCheck(x,y,obj_Tags.movable)) {
	if (other.possessed == false and possessed == true) {	
		if (possessed == false) {
			//Move away from other enemies
			scr_EnemyPush();	
		}
	}
}