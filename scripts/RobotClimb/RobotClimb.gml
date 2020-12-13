function RobotClimb() {
	state = activeState.climbing;
	
	currentRunRightSpeed = 0;
	currentRunLeftSpeed = 0;
		
	if (pressClimbUp && !place_meeting(x, y - 1, objWall)) {
        var instRope = instance_place(x, y + 5, objRope);
        if (instRope != noone)
        {
            y -= 1.3;
        }
    } else if (pressClimbDown) {
        var instRope = instance_place(x, y + 24, objRope);
        if (instRope != noone)
        {
            y += 1.3;
        }
    }
	
	if (runSensitivity > .9) {
		faceDir = pressRunDir;
		hspeed = maxRunSpeed * pressRunDir;
        RobotJump();
		return;
	} else {
		hspeed = 0;
	}
}