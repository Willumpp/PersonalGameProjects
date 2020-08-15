/// @description Enemy Step

//Health
scr_Health();

angle = scr_PlayerRotation();

//Shooting
if (scr_ShootCondition() == true) { 
	scr_FocusedWeapon(spr_PistolBullet,projectileSpeed,damage,projectileAngle); 
}

//Player Tracking
scr_TackingCondition();

//Relocate
scr_EnemyRelocateCondition();

//Chase Player
scr_EnemyPushCondition();
