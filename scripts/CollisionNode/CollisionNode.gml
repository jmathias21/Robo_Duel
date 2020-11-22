function CollisionNode(argument0) {
	{
	    dir = argument0;
	    if (dir < 0)
	        dir = 360 + dir;
	    separation = room_height / 10;
	    for (i = 0; i < 10; i += 1)
	    {
	        var instWall = collision_line(x, y, x + lengthdir_x(separation * i, dir), y + lengthdir_y(separation * i, dir), objFloor, false, true);
	        if (instWall != noone)
	        {
	            // Calculate distance from source to collision point using trigonometric math. hyp = adj / cos(angle). We then use
	            // that to calculate horizontal distance to point. We already have the verticle distance. We also take into account
	            // the quadrant by readjusting the angle to start from the opposite end in quadrants 1 and 3.
	            var quadrant = floor(dir / 90);
	            var quadrantAngle = 0;
	            if (quadrant % 2 == 1)
	                quadrantAngle = dir - (90 * quadrant);
	            else
	                quadrantAngle = 90 - (dir - (90 * quadrant));
	            var distance = abs(y - instWall.y) / cos(DegToRad(quadrantAngle));
	            node = instance_create(x + lengthdir_x(distance, dir), instWall.y, objNode);
	            node.wall = instWall;
	            node.anchor = id;
	            return node;
	        }
	    }
    
	    node = instance_create(x + lengthdir_x(room_width, dir), y + lengthdir_y(room_width, dir), objNode);
	    node.wall = noone;
	    return node;
	}



}
