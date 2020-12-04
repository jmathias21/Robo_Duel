function RobotLandOnRubber() {
	state = activeState.jumping;
		
	vspeed = -vspeed - 1;
	y = collisionRubber.y - 1;

	faceDir = pressRunDir;
}