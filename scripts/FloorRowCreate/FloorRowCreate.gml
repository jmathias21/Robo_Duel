function FloorRowCreate(argument0, argument1, argument2, argument3, argument4, argument5) {
	{
	    floorWidth = 17;
    
	    isMiddleRow = argument5;
	    floorLeft = floorWidth * argument0;
	    floorTotalTiles = argument1;
	    floorHoles = argument2 + floor(random(argument3));
	    floorHoleDoubles = 0;
    
	    for (i = 0; i < floorHoles * 2; i += 1)
	    {
	        floorHolePositions[i] = -1;
	    }
    
	    for (i = 0; i < floorHoles; i += 1)
	    {
	        floorHolePositions[i] = 2 + floor(random(floorTotalTiles - 3));
	        for (j = 0; j < i; j++)
	        {
	            if (floorHolePositions[i] == floorHolePositions[j] - 2)
	            {
	                floorHolePositions[i] -= 1;
	            }
	            else if (floorHolePositions[i] == floorHolePositions[j] + 2)
	            {
	                floorHolePositions[i] += 1;
	                floorHoleDoubles += 1;
	            }
	        }
	        if (floor(random(2)) == 1)
	        {
	            floorHolePositions[i + floorHoles] = floorHolePositions[i] + 1;
	        }
	    }
    
	    for (i = 0; i < floorTotalTiles; i += 1)
	    {
	        hole = false;
	        for (j = 0; j < floorHoles + floorHoleDoubles; j += 1)
	        {
	            if (i == floorHolePositions[j])
	                hole = true;
	        }
	        if (!hole)
	        {
	            if (!isMiddleRow || abs(i - (floorTotalTiles / 2) + 1) > 2)
	            {
	                instance_create(x + floorLeft + (floorWidth * i), argument4, objFloor);
	            }
	        }
	    }
	}



}
