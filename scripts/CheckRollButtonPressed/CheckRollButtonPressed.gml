function CheckRollButtonPressed(argument0) {
	{
	    var playerControl = argument0;
	    if (playerControl == 0)
	    {
	        if (keyboard_check_pressed(vk_down) || gamepad_button_check_pressed(0, gp_face2))
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
	        if (keyboard_check_pressed(ord("S")) || gamepad_button_check_pressed(1, gp_face2))
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
	        if (gamepad_button_check_pressed(2, gp_face2))
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
	        if (gamepad_button_check_pressed(3, gp_face2))
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
