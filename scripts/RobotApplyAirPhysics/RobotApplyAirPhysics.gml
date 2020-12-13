function RobotApplyAirPhysics() {
	if (inAir) {
		if (state != activeState.climbing) {
			vspeed += rgravity;
			
			if (pressRunLeft) {
				hspeed -= .02 * runSensitivity;
				if (hspeed < -1) {
					hspeed = -1 + ((hspeed + 1) * .5);
				}
			}
			
			if (pressRunRight) {
				hspeed += .02 * runSensitivity;
				if (hspeed > 1) {
					hspeed = 1 + ((hspeed - 1) * .5);
				}
			}
		}
	}
}