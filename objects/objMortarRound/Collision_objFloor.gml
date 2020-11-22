{
    if (armed)
    {
        collisionRubber = collision_rectangle(x - 3, y, x + 3, y + vspeed + 1, objRubberFloor, false, true);
        if (collisionRubber != noone)
        {
            vspeed = -5;
            gravity = .1;
            hspeed = -1 + random(2);
        }
        else
        {
            y = other.y;
            with (other)
            {
                deathType = 0;
                instance_destroy();
            }
            instance_destroy();
        }
    }
}

