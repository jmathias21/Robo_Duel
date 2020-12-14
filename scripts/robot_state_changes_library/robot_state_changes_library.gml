function robot_change_state(_newState) {
	prevState = state;
	state = _newState;
}

function get_new_robot_state_from_standing() {
	if (pressRun) {
        return activeState.running;
	}
	
	if (pressCrouch) {
		return activeState.crouching;
	}
	
	if (pressShoot) {
		return activeState.shooting;
	}
	
	if (pressJump && onFloor) {
		return activeState.jumping;
	}
	
	if (pressClimbUp && onFloor && !place_meeting(x, y - 1, objWall))
    {
        var instRope = instance_place(x, y + 5, objRope);
        if (instRope != noone)
        {
            return activeState.climbing;
        }
    }
	
	if (pressClimbDown && onFloor)
    {
        var instRope = instance_place(x, y + 24, objRope);
        if (instRope != noone)
        {
            return activeState.climbing;
        }
    }
	
	return activeState.standing;
}

function get_new_robot_state_from_running() {
	if ((pressRun && onFloor && pressedRoll) || (landingOnFloor && (pressCrouch || pressedRoll))) {
        return activeState.rolling;
    }
	
	if (pressJump && onFloor) {
		return activeState.jumping;
	}
	
	if (!pressRun) {
		return activeState.standing;
	}
	
	return activeState.running;
}

function get_new_robot_state_from_jumping() {
	return activeState.jumping;
}

function get_new_robot_state_from_climbing() {
	if (runSensitivity > .9) {
        return activeState.jumping;
	}
	
	return activeState.climbing;
}

function get_new_robot_state_from_rolling() {
	// if rolling in air, end roll before last frame
	if (inAir && image_index == sprite_get_number(sprRobotRoll) - 1) {
		return activeState.standing;
	}
	
	if (!inAir && image_index == sprite_get_number(sprRobotRoll)) {
		return activeState.standing;
	}
	
	return activeState.rolling;
}

function get_new_robot_state_from_shooting() {
	if (item == 0) {
		return activeState.standing;
	}
	
	return activeState.shooting;
}