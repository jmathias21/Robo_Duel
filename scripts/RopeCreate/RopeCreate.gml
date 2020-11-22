function RopeCreate(argument0, argument1, argument2, argument3) {
	{
	    ropePosX = 0;
	    ropePosY = argument0;
	    floorPosY = argument1;
	    quadrantWidth = argument2;
	    attemptMax = 50;
	    count = 0;
	    while (ropePosX == 0 && count < attemptMax)
	    {
	        count += 1;
	        potentialPos = argument3 + (floor(random(quadrantWidth)) * 17);
	        if (!collision_line(potentialPos, 0, potentialPos, room_height, objRope, false, true) &&
	            collision_point(potentialPos, floorPosY, objFloor, false, true) &&
	            collision_line(potentialPos, floorPosY + 30, potentialPos, room_height, objFloor, false, true))
	        {
	            ropePosX = potentialPos;
	            break;
	        }
	    }
    
	    if (ropePosX != 0)
	    {
	        count = 0;
	        instance_create(ropePosX, ropePosY, objRope);
	        while (true)
	        {
	            count += 1;
	            if (!collision_point(ropePosX, floorPosY + (42 * count), objFloor, false, true) && (floorPosY + (42 * count)) < room_height)
	            {
	                instance_create(ropePosX, ropePosY + (42 * count), objRope);
	            }
	            else
	            {
	                break;
	            }
	        }
	    }
	}



}
