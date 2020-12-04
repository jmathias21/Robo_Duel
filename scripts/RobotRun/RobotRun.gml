function RobotRun() {
	// face robot in the direction user is pressing
	faceDir = pressRunDir != 0 ? pressRunDir : faceDir;
	
	if ((pressRun && onFloor && pressRoll) || (landingOnFloor && (pressCrouch || pressRoll))) {
        state = activeState.rolling;
		return;
    }
	
	if (pressJump && onFloor) {
		state = activeState.jumping;
		return;
	}
	
	if (pressRunLeft && onFloor) {
		currentRunRightSpeed *= .8;
		currentRunLeftSpeed += .1;
		
		if (currentRunLeftSpeed > maxRunSpeed) {
			currentRunLeftSpeed = maxRunSpeed;
		}
		return;
	}
	
	if (pressRunRight && onFloor) {
		currentRunLeftSpeed *= .8;
		currentRunRightSpeed += .1;
		
		if (currentRunRightSpeed > maxRunSpeed) {
			currentRunRightSpeed = maxRunSpeed;
		}
		return;
	}
	
	// if no actions are chained, change robot back to standing state
	state = activeState.standing;
}