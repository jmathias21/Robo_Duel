function RobotApplyFriction() {
	if (onFloor && state != activeState.jumping) {
		hspeed *= .6;
	}
}