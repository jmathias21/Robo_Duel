function RobotStand() {
	// Transition run speed to 0
	currentRunLeftSpeed *= .2;
	currentRunRightSpeed *= .2;
	
	if (pressRun) {
        state = activeState.running;
	}
	
	if (pressCrouch) {
		state = activeState.crouching;
	}
	
	if (pressShoot) {
		state = activeState.shooting;
		RobotShoot();
	}
	
	if (pressJump && onFloor) {
		state = activeState.jumping;
	}
	
	if (pressClimbUp && onFloor && !place_meeting(x, y - 1, objWall))
    {
        var instRope = instance_place(x, y + 5, objRope);
        if (instRope != noone)
        {
            state = activeState.climbing;
        }
    }
}