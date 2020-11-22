{
    falling = true;
    running = false;
    rolling = false;
    if (x <= other.x)
    {
        currentRSpeed = 0;
        hspeed = -rspeed - .1;
    }
    else
    {
        currentRSpeed = 0;
        hspeed = rspeed + .1;
    }
}

