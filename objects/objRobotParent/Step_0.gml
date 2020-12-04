{
    UpdatePassiveStates();
	
	// buttons being pressed
	pressRunLeft = CheckRunLeftButton(player, .7);
	pressRunRight = CheckRunRightButton(player, .7);
	pressRun = pressRunRight || pressRunLeft;
	pressRunDir = pressRunLeft == 1 ? -1 : (pressRunRight == 1 ? 1 : 0);
	pressJump = CheckJumpButton(player);
	pressCrouch = CheckCrouchButton(player);
	pressRoll = CheckRollButton(player);
	pressShoot = CheckWeaponButtonPressed(player);
	pressClimbUp = CheckClimbUpButton(player);
	pressClimbDown = CheckClimbDownButton(player);
	
	if (landingOnFloor) {
		RobotLandOnFloor();
	}
	
	if (landingOnRubber) {
		RobotLandOnRubber();
	}
	
	if (state == activeState.standing) {
		RobotStand();
	}
	
	if (state == activeState.running) {
		RobotRun();
	}
	
	if (state == activeState.jumping) {
		RobotJump();
	}
	
	if (state == activeState.climbing) {
		RobotClimb();
	}
	
	if (inAir) {
		if (state != activeState.climbing) {
			vspeed += rgravity;
		}
	}
	
	if (onFloor) {
		hspeed += currentRunRightSpeed;
		hspeed -= currentRunLeftSpeed;
	}
	
	RobotApplyFriction(.2);
}
