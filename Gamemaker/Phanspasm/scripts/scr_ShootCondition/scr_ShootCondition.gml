if ((scr_KeyShoot() and possessed == true and canShoot == true and ammo > 0) or //Aim with player
	(following == true and canShoot == true and instance_exists(target) and ammo > 0)) //Aim at player
{ return true; }