function RobotRoll() {
	state = activeState.rolling;
	
	// if rolling in air, end roll before last frame
	if (inAir && image_index == sprite_get_number(sprRobotRoll) - 1) {
		RobotStand();
		return;
	}
	
	if (!inAir && image_index == sprite_get_number(sprRobotRoll)) {
		RobotStand();
		return;
	}
	
	if (faceDir == 1) {
		hspeed = 1;
	}
	
	if (faceDir == -1) {
		hspeed = -1;
	}
}