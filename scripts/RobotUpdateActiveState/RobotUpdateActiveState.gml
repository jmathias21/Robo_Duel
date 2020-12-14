function robot_update_state() {
	if (landingOnFloor) {
		RobotLandOnFloor();
	}
	
	if (landingOnRubber) {
		RobotLandOnRubber();
	}
	
	// update state variable
	if (state == activeState.standing) {
		robot_change_state(get_new_robot_state_from_standing());
	} else if (state == activeState.running) {
		robot_change_state(get_new_robot_state_from_running());
	} else if (state == activeState.jumping) {
		robot_change_state(get_new_robot_state_from_jumping());
	} else if (state == activeState.climbing) {
		robot_change_state(get_new_robot_state_from_climbing());
	} else if (state == activeState.rolling) {
		robot_change_state(get_new_robot_state_from_rolling());
	} else if (state == activeState.shooting) {
		robot_change_state(get_new_robot_state_from_shooting());
	}
	
	// execute state
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