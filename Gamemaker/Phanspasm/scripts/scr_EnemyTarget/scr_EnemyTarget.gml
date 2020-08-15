var player = obj_Possession.possInstance; //get player
var condition = false;

with (obj_Possession.possInstance) {
	if (scr_ShootCondition()) {
		condition = true;
	}
}

if (instance_exists(target) == false) {
	target = noone;
}

if (instance_exists(player)) {
	if ((scr_KeyShoot()  and distance_to_object(player) < player.weaponVolumeRange and player.canShoot == true) or //Cant see player and shoot
		(scr_LineOfSight(player,viewRange) and scr_KeyShoot())) { //Can see player and shoot
		
		//Track source of sound if cant see player
		if (scr_KeyShoot() and distance_to_object(player) < player.weaponVolumeRange and player.canShoot == true) and 
			scr_LineOfSight(player,viewRange) == false {
				
				lastPos_x = player.x;
				lastPos_y = player.y;
				
				//Track source
				if (mp_grid_path(global.grid, path, x, y, lastPos_x, lastPos_y, true)) {
					path_start(path, moveSpeed, path_action_stop, false); //Move along path
				}
		}
		//Replace target and track player in can see
		else if (target != player && scr_LineOfSight(player,viewRange)) {
			target = player;
		}
	}
}
