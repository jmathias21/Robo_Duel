function CheckRunLeftButton(argument0, argument1) {
	{
	    var playerControl = argument0;
	    var horizSensitivity = argument1;
	    if (playerControl == 0)
	    {
	        if (keyboard_check(vk_left) || gamepad_button_check(0, gp_padl) ||
	            (gamepad_axis_value(0, gp_axislh) < -horizSensitivity && gamepad_axis_value(0, gp_axislv) < .75))
	        {
	            return true;
	        }
	        else
	        {
	            return false;
	        }
	    }
	    if (playerControl == 1)
	    {
	        if (keyboard_check(ord("A")) || gamepad_button_check(1, gp_padl) ||
	            (gamepad_axis_value(1, gp_axislh) < -horizSensitivity && gamepad_axis_value(1, gp_axislv) < .75))
	        {
	            return true;
	        }
	        else
	        {
	            return false;
	        }
	    }
	    if (playerControl == 2)
	    {
	        if (gamepad_button_check(2, gp_padl) ||
	            (gamepad_axis_value(2, gp_axislh) < -horizSensitivity && gamepad_axis_value(2, gp_axislv) < .75))
	        {
	            return true;
	        }
	        else
	        {
	            return false;
	        }
	    }
	    if (playerControl == 3)
	    {
	        if (gamepad_button_check(3, gp_padl) ||
	            (gamepad_axis_value(3, gp_axislh) < -horizSensitivity && gamepad_axis_value(3, gp_axislv) < .75))
	        {
	            return true;
	        }
	        else
	        {
	            return false;
	        }
	    }
	}



}
