{
    alarm[1] = 5;
    if (life <= 0)
    {
        instance_destroy();
    }
    
    if (!place_meeting(x, y + 1, objFloor) && falling)
        gravity = .1;
}

