{
    //if (zapped < 3)
    {
        alarm[0] = 70 + random(100);
        alarm[1] = 20;
        
        var objFloorUp = collision_line(x, y, x, y - 30, objFloor, false, true);
        var objFloorDown = collision_line(x, y, x, y + 30, objFloor, false, true);
        
        if (objFloorUp != noone)
        {
            zapUp = true;
            zapUpIndex = floor(random(2));
            zapped += 1;
        }
        if (objFloorDown != noone)
        {
            zapDown = true;
            zapDownIndex = 2 + floor(random(2));
            zapped += 1;
        }
        
        if (zapUp && zapDown)
        {
            var rand = floor(random(2));
            if (rand == 0)
                zapUp = false;
            else
                zapDown = false;
        }
        
        if (zapUp)
        {
            objFloorUp.electrified = true;
            with (objFloorUp)
            {
                event_user(0);
            }
        }
        else if (zapDown)
        {
            objFloorDown.electrified = true;
            with (objFloorDown)
            {
                event_user(0);
            }
        }
    }
}

