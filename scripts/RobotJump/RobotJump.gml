function RobotJump() {
	state = activeState.jumping;
	
	if (onFloor) {
		vspeed -= 2.8;
		
		state = activeState.standing;
		return;
	}
}