function RobotGetButtonChecks(argument0) {
	player = argument0;
	
	pressRunLeft = CheckRunLeftButton(player, .4);
	pressRunRight = CheckRunRightButton(player, .4);
	pressRun = pressRunRight || pressRunLeft;
	pressRunDir = pressRunLeft == 1 ? -1 : (pressRunRight == 1 ? 1 : 0);
	pressJump = CheckJumpButton(player);
	pressCrouch = CheckCrouchButton(player);
	pressRoll = CheckRollButton(player);
	pressedRoll = CheckRollButtonPressed(player);
	pressShoot = CheckWeaponButtonPressed(player);
	pressClimbUp = CheckClimbUpButton(player);
	pressClimbDown = CheckClimbDownButton(player);
	runSensitivity = CheckRunSensitivity(player);
	climbSensitivity = CheckClimbSensitivity(player);
}