function CheckCrouchButton(argument0) {
	{
	    var playerControl = argument0;
	    if (playerControl == 0)
	    {
	        if (keyboard_check(vk_down) || gamepad_axis_value(0, gp_axislv) > .75 ||
	        gamepad_button_check(0, gp_padd))
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
	        if (keyboard_check(ord("S")) || gamepad_axis_value(1, gp_axislv) > .75 ||
	        gamepad_button_check(1, gp_padd))
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
	        if (gamepad_axis_value(2, gp_axislv) > .75 ||
	        gamepad_button_check(2, gp_padd))
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
	        if (gamepad_axis_value(3, gp_axislv) > .75 ||
	        gamepad_button_check(3, gp_padd))
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
