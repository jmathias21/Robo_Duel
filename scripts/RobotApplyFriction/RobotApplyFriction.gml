function RobotApplyFriction(argument0) {
	frict = argument0;
	if (onFloor && state != activeState.jumping) {
		hspeed *= frict;
	}
}