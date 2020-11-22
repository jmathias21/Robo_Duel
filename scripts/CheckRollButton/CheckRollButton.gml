function CheckRollButton(argument0) {
	{
	    var playerControl = argument0;
	    if (playerControl == 0)
	    {
	        if (keyboard_check(vk_down) || gamepad_button_check(0, gp_face2))
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
	        if (keyboard_check(ord("S")) || gamepad_button_check(1, gp_face2))
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
	        if (gamepad_button_check(2, gp_face2))
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
	        if (gamepad_button_check(3, gp_face2))
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
