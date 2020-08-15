//If not possessed and can track possessed instance
if (possessed == false) { 
	if (instance_exists(target)) { scr_EnemyTracking(); }
	scr_SmoothDecceleration();
}