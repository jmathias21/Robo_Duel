{
    if (!pause)
    {
        if (spotted)
        {
            dif = abs(floorX - x);
            speed = dif / 5;
            if (speed <= .1)
            {
                speed = 0;
                destroy = true;
                spotted = false;
            }
        }
        else if (!destroy)
        {
            if (speed < 1.3)
                speed += .05;
            instFloor = collision_line(x, y, x, y + room_height, objFloorParent, false, true);
            if (instFloor == noone)
            {
                instFloor = collision_line(x, y, x, y + room_height, objFloorGhost, false, true);
            }
            if (instFloor != noone)
            {
                spotted = true;
                floorX = instFloor.x;
            }
        }
        
        if (destroy)
        {
            destroy = false;
            pause = true;
            alarm[0] = 20;
            alarm[1] = 100;
        }
    }
}

