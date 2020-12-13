function CheckRunSensitivity(argument0) {
	var playerControl = argument0;
	
	if (playerControl == 0) {
		if (keyboard_check(vk_right) || keyboard_check(vk_left)) {
			return 1;
		} else {
			return abs(gamepad_axis_value(0, gp_axislh));
		}
	}
	
	if (playerControl == 1) {
		if (keyboard_check(ord("D")) || keyboard_check(ord("A"))) {
			return 1;
		} else {
			return abs(gamepad_axis_value(1, gp_axislh));
		}
	}
	
	if (playerControl == 2) {
		return abs(gamepad_axis_value(2, gp_axislh));
	}
	
	if (playerControl == 3) {
		return abs(gamepad_axis_value(3, gp_axislh));
	}
}