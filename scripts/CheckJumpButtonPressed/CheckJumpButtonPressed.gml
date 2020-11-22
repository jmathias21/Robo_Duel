function CheckJumpButtonPressed(argument0) {
	{
	    var playerControl = argument0;
	    if (playerControl == 0)
	    {
	        if (keyboard_check_pressed(vk_up) || gamepad_button_check_pressed(0, gp_face1))
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
	        if (keyboard_check_pressed(ord("W")) || gamepad_button_check_pressed(1, gp_face1))
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
	        if (gamepad_button_check_pressed(2, gp_face1))
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
	        if (gamepad_button_check_pressed(3, gp_face1))
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
