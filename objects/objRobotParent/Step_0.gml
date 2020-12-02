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
	
	if (landingOnFloor) {
		var soundLand = audio_play_sound(soundFootstep, 1, false);
		audio_sound_gain(soundLand, vspeed / 10, 0);
		
		if (collisionFloor.electrified) {
		    RobotDestroy(2);
		}
	
		if (pressRunRight && pressCrouch) {
			state = activeState.rolling;
			faceDir = 1;
		} else if (pressRunLeft && pressCrouch) {
			state = activeState.rolling;
			faceDir = -1;
		} else {
			state = activeState.standing;
		}
	}
	
	if (landingOnRubber) {
		state = activeState.jumping;
		
		vspeed = -vspeed - 1;
		y = collisionRubber.y - 1;

		faceDir = pressRunDir;
	}
	
	if (state == activeState.standing) {
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
	}
	
	if (state == activeState.running) {
		if (pressRun) {
			if ((onFloor && pressRoll) || (falling && (pressCrouch || pressRoll))) {
                state = activeState.rolling;
            }
			
            faceDir = pressRunDir;
			hspeed += .3 * pressRunDir;
			if (!place_meeting(x + hspeed, y, objWall)) {
		        hspeed += currentRunSpeed;
		    }
		} else {
			state = activeState.standing;
		}
	}
	
	if (state == activeState.climbing) {
		if (pressRun) {
            state = activeState.jumping;
            faceDir = pressRunDir;
            currentRunSpeed = maxRunspeed * pressRunDir;
		}
	}

}
