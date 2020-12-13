function RobotUpdateActiveState() {
	if (landingOnFloor) {
		RobotLandOnFloor();
		return;
	}
	
	if (landingOnRubber) {
		RobotLandOnRubber();
		return;
	}
	
	if (state == activeState.standing) {
		RobotStand();
		return;
	}
	
	if (state == activeState.running) {
		RobotRun();
		return;
	}
	
	if (state == activeState.jumping) {
		RobotJump();
		return;
	}
	
	if (state == activeState.climbing) {
		RobotClimb();
		return;
	}
	
	if (state == activeState.rolling) {
		RobotRoll();
		return;
	}
	
	if (state == activeState.shooting) {
		RobotShoot();
		return;
	}
}