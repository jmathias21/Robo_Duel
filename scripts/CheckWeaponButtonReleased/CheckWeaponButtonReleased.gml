function CheckWeaponButtonReleased(argument0) {
	{
	    var playerControl = argument0;
	    if (playerControl == 0)
	    {
	        if (keyboard_check_released(vk_shift) || gamepad_button_check_released(0, gp_face3))
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
	        if (keyboard_check_released(ord("E")) || gamepad_button_check_released(1, gp_face3))
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
