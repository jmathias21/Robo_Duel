function RobotCollision() {
	{
	    if (x <= other.x)
	    {
	        if (!falling && !other.falling)
	        {
	            if (((other.inAir || inAir) && !fallRolling && !rolling) ||
	                (other.rolling && rolling))
	            {
	                alarm[2] = 1;
	                hspeed = -rspeed + .3;
	                vspeed = -2.5;
                
	                if (other.rolling && !rolling)
	                    hspeed = -hspeed;
	            }
	            else if (other.running && other.dir == -1)
	            {
	                running = false;
	            }
	        }
	    }
    
	    if (x > other.x)
	    {
	        if (!falling && !other.falling)
	        {
	            if (((other.running || other.inAir || inAir) && !fallRolling && !rolling) ||
	                (other.rolling && rolling))
	            {
	                alarm[2] = 1;
	                hspeed = rspeed - .3;
	                vspeed = -2.5;
                
	                if (other.rolling && !rolling)
	                    hspeed = -hspeed;
	            }
	            else if (other.running && other.dir == 1)
	            {
	                running = false;
	            }
	        }
	    }
    
	    audio_stop_sound(soundLaserChargeIndex);
	    if (instWeaponLaser != noone)
	    {
	        with (instWeaponLaser)
	        {
	            instance_destroy();
	        }
	    }
	}



}
