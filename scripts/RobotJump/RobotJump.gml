function RobotJump() {
	state = activeState.jumping;
	
	if (onFloor) {
		vspeed -= 2.8;
		return;
	}
}