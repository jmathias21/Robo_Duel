function CollisionNode2D(argument0, argument1, argument2) {
	{
	    var dir = argument0;
	    var xPos = argument1;
	    var yPos = argument2;
    
	    var separation = room_height / 10;
	    var intersect = 1;
	    for (var i = 0; i < 10; i += 1)
	    {
	        var node;
	        var newIntersect;
	        var instWall = collision_line(xPos, yPos, xPos + lengthdir_x(separation * i, dir), yPos + lengthdir_y(separation * i, dir), objCollider, false, true);
        
	        if (instWall != noone)
	        {
	            if (x < instWall.x)
	            {
	                newIntersect = lines_intersect(xPos, yPos, xPos + lengthdir_x(room_width, dir), yPos + lengthdir_y(room_width, dir),
	                    instWall.bbox_left - 1,
	                    instWall.bbox_top - 1,
	                    instWall.bbox_left - 1,
	                    instWall.bbox_bottom + 1,
	                    true);
	                if (newIntersect != 0)
	                    intersect = newIntersect;
	            }
	            if (xPos > instWall.x)
	            {
	                newIntersect = lines_intersect(xPos, yPos, xPos + lengthdir_x(room_width, dir), yPos + lengthdir_y(room_width, dir),
	                    instWall.bbox_right + 1,
	                    instWall.bbox_top - 1,
	                    instWall.bbox_right + 1,
	                    instWall.bbox_bottom + 1,
	                    true);
	                if (newIntersect != 0)
	                    intersect = newIntersect;
	            }
	            if (yPos < instWall.y)
	            {
	                newIntersect = lines_intersect(xPos, yPos, xPos + lengthdir_x(room_width, dir), yPos + lengthdir_y(room_width, dir),
	                    instWall.bbox_left - 1,
	                    instWall.bbox_top,
	                    instWall.bbox_right + 1,
	                    instWall.bbox_top,
	                    true);
	                if (newIntersect != 0)
	                    intersect = newIntersect;
	            }
	            if (yPos > instWall.y)
	            {
	                newIntersect = lines_intersect(xPos, yPos, xPos + lengthdir_x(room_width, dir), yPos + lengthdir_y(room_width, dir),
	                    instWall.bbox_left - 1,
	                    instWall.bbox_bottom + 1,
	                    instWall.bbox_right + 1,
	                    instWall.bbox_bottom + 1,
	                    true);
	                if (newIntersect != 0)
	                    intersect = newIntersect;
	            }
	            var node = instance_create(xPos + intersect * ((xPos + lengthdir_x(room_width, dir)) - xPos), yPos + intersect * ((yPos + lengthdir_y(room_width, dir)) - yPos), objNode);
	            node.wall = instWall;
	            return node;
	        }
	    }
	    var node = instance_create(xPos + intersect * ((xPos + lengthdir_x(room_width, dir)) - xPos), yPos + intersect * ((yPos + lengthdir_y(room_width, dir)) - yPos), objNode);
	    node.wall = noone;
	    return node;
	}



}
