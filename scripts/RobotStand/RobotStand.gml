function RobotStand() {
	state = activeState.standing;
	
	if (pressRun) {
        RobotRun();
		return;
	}
	
	if (pressCrouch) {
		RobotCrouch();
		return;
	}
	
	if (pressShoot) {
		RobotShoot();
		return;
	}
	
	if (pressJump && onFloor) {
		RobotJump();
		return;
	}
	
	if (pressClimbUp && onFloor && !place_meeting(x, y - 1, objWall))
    {
        var instRope = instance_place(x, y + 5, objRope);
        if (instRope != noone)
        {
			x = instRope.x;
            RobotClimb();
			return;
        }
    }
	
	if (pressClimbDown && onFloor)
    {
        var instRope = instance_place(x, y + 24, objRope);
        if (instRope != noone)
        {
			x = instRope.x;
            RobotClimb();
			return;
        }
    }
}