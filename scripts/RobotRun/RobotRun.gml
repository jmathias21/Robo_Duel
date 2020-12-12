function RobotRun() {
	state = activeState.running;
	
	// face robot in the direction user is pressing
	faceDir = pressRunDir != 0 ? pressRunDir : faceDir;
	
	if (pressRunLeft && onFloor) {
		hspeed -= .4 * runSensitivity;
		if (hspeed < -1) {
			hspeed = -1 + ((hspeed + 1) * .5);
		}
	}
	
	if (pressRunRight && onFloor) {
		hspeed += .4 * runSensitivity;
		if (hspeed > 1) {
			hspeed = 1 + ((hspeed - 1) * .5);
		}
	}
	
	if ((pressRun && onFloor && pressRoll) || (landingOnFloor && (pressCrouch || pressRoll))) {
        RobotRoll();
		return;
    }
	
	if (pressJump && onFloor) {
		RobotJump();
		return;
	}
	
	// if no actions are chained, change robot back to standing state
	if (!pressRun) {
		RobotStand();
		return;
	}
}