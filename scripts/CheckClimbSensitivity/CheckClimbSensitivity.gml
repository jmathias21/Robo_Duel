function CheckClimbSensitivity(argument0) {
	var playerControl = argument0;
	
	if (playerControl == 0) {
		if (keyboard_check(vk_up) || keyboard_check(vk_down)) {
			return 1;
		} else {
			return abs(gamepad_axis_value(0, gp_axislv));
		}
	}
	
	if (playerControl == 1) {
		if (keyboard_check(ord("W")) || keyboard_check(ord("S"))) {
			return 1;
		} else {
			return abs(gamepad_axis_value(1, gp_axislv));
		}
	}
	
	if (playerControl == 2) {
		return abs(gamepad_axis_value(2, gp_axislv));
	}
	
	if (playerControl == 3) {
		return abs(gamepad_axis_value(3, gp_axislv));
	}
}