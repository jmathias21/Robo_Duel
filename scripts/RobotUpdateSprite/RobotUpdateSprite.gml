function RobotUpdateSprite() {
	if (inAir && state != activeState.rolling) {
		if (falling && sprite_index != sprRobotStandJumpDown) {
			sprite_index = sprRobotStandJumpDown;
			image_index = 0;
			image_speed = .3;
		} else if (!falling && sprite_index != sprRobotStandJumpUp) {
			sprite_index = sprRobotStandJumpUp;
			image_index = 0;
			image_speed = .1;
		}
		return;
	}
	
	if (state == activeState.standing) {
		sprite_index = sprRobotStand;
		return;
	}
	
	if (state == activeState.running) {
		image_speed = .2 * runSensitivity;
		if (sprite_index != sprRobotRun) {
			sprite_index = sprRobotRun;
			image_index = 0;
		}
		return;
	}
	
	if (state == activeState.climbing) {
		image_speed = .1 * climbSensitivity;
		if (sprite_index != sprRobotClimb) {
			sprite_index = sprRobotClimb;
			image_index = 0;
		}
		return;
	}
	
	if (state == activeState.rolling) {
		if (sprite_index != sprRobotRoll) {
			sprite_index = sprRobotRoll;
			image_index = 0;
			image_speed = .2;
		}
	}
}