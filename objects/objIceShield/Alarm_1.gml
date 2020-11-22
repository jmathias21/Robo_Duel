{
    alarm[1] = 4;
    if (hit)
    {
        event_user(0);
        hit = false;
        alarm[1] = 20;
        
        if (life <= 0)
            instance_destroy();
    }
}

