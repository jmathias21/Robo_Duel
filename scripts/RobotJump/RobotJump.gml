function RobotJump() {
	if (onFloor) {
		RobotRun();
		vspeed -= 2.8;
		return;
	}
}