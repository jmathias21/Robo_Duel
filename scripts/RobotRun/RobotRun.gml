function RobotRun() {
	// face robot in the direction user is pressing
	if (!inAir) {
		faceDir = pressRunDir != 0 ? pressRunDir : faceDir;
	}
	
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
}