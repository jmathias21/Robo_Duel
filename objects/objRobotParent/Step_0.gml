{
	RobotGetButtonChecks(player);
	
    RobotUpdatePassiveStates();
	
	RobotApplyFriction();
	
	RobotApplyAirPhysics();
	
	RobotUpdateActiveState();
	
	RobotUpdateSprite();
}
