function RobotApplyFriction(argument0) {
	frict = argument0;
	if (onFloor) {
		hspeed *= frict;
	}
}