{
	RobotGetButtonChecks(player);
	
    RobotUpdatePassiveStates();
	
	RobotApplyFriction();
	
	RobotApplyAirPhysics();
	
	robot_update_state();
	
	RobotUpdateSprite();
}
