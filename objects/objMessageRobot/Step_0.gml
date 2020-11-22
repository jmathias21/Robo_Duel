{
    if (beginPath)
        direction += 2;
    if (jets && !beginPath)
    {
        vspeed -= .15;
        if (vspeed <= .2)
        {
            beginPath = true;
            //path_start(path1, .2, path_action_continue, false);
            vspeed = 0;
            direction = 270;
            speed = .2;
        }
    }
    
    if (canLeave)
    {
        if (direction >= 40 && direction < 50)
        {
            leave = true;
        }
    }
    
    if (leave)
    {
        direction -= .197;
        speed += .06;
    }
}

