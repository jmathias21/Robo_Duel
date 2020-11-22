{
    if (hspeed > .01)
    {
        image_angle = 360 - (speed * 15);
        image_xscale = 1;
    }
    else if (hspeed < -.01)
    {
        image_angle = speed * 15;
        image_xscale = -1;
    }
    
    if (spotted && instance_exists(floorGhost))
    {
        dif = abs(floorGhost.x - x);
        speed = dif / 5;
        if (speed <= .1)
        {
            speed = 0;
            crane = true;
            craneY = y;
            spotted = false;
            audio_play_sound(soundMechanical1, 1, false);
        }
    }
    else if (!crane)
    {
        if (speed < 1.3)
            speed += .05;
        floorGhost = collision_line(x, y, x, y + 35, objFloorGhost, false, true);
        if (floorGhost != noone && !floorGhost.spotted)
        {
            floorGhost.spotted = true;
            if (floor(random(spotRate)) == 0)
                spotted = true;
            else
                spotted = false;
        }
    }
    
    if (crane && instance_exists(floorGhost))
    {
        craneY += (floorGhost.y - craneY) / 3;
        if (floorGhost.y - craneY < .2)
        {
            with (floorGhost)
            {
                event_user(0);
            }
            crane = false;
        }
    }
}

