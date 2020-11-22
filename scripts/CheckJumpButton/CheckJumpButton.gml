function CheckJumpButton(argument0) {
	{
	    var playerControl = argument0;
	    if (playerControl == 0)
	    {
	        if (keyboard_check(vk_up) || gamepad_button_check(0, gp_face1))
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
	        if (keyboard_check(ord("W")) || gamepad_button_check(1, gp_face1))
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
	        if (gamepad_button_check(2, gp_face1))
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
	        if (gamepad_button_check(3, gp_face1))
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
