function CheckClimbUpButton(argument0) {
	{
	    var playerControl = argument0;
	    if (playerControl == 0)
	    {
	        if (keyboard_check(vk_up) || gamepad_button_check(0, gp_padu) || gamepad_axis_value(0, gp_axislv) < -.3)
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
	        if (keyboard_check(ord("W")) || gamepad_button_check(1, gp_padu) || gamepad_axis_value(1, gp_axislv) < -.3)
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
	        if (gamepad_axis_value(2, gp_axislv) < -.3 || gamepad_button_check(2, gp_padu))
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
	        if (gamepad_axis_value(3, gp_axislv) < -.3 || gamepad_button_check(3, gp_padu))
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
