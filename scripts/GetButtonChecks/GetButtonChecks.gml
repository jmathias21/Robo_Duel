function GetButtonChecks(argument0) {
	player = argument0;
	
	pressRunLeft = CheckRunLeftButton(player, .2);
	pressRunRight = CheckRunRightButton(player, .2);
	pressRun = pressRunRight || pressRunLeft;
	pressRunDir = pressRunLeft == 1 ? -1 : (pressRunRight == 1 ? 1 : 0);
	pressJump = CheckJumpButton(player);
	pressCrouch = CheckCrouchButton(player);
	pressRoll = CheckRollButton(player);
	pressShoot = CheckWeaponButtonPressed(player);
	pressClimbUp = CheckClimbUpButton(player);
	pressClimbDown = CheckClimbDownButton(player);
	runSensitivity = GetRunSensitivity(player);
}