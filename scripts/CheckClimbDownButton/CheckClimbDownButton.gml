function CheckClimbDownButton(argument0) {
	{
	    var playerControl = argument0;
	    if (playerControl == 0)
	    {
	        if (keyboard_check(vk_down) || gamepad_button_check(0, gp_padd) || gamepad_axis_value(0, gp_axislv) > .3)
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
	        if (keyboard_check(ord("S")) || gamepad_button_check(1, gp_padd) || gamepad_axis_value(1, gp_axislv) > .3)
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
	        if (gamepad_axis_value(2, gp_axislv) > .3 || gamepad_button_check(3, gp_padd))
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
	        if (gamepad_axis_value(3, gp_axislv) > .3 || gamepad_button_check(4, gp_padd))
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
