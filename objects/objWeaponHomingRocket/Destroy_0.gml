{
    instance_create(x, y, objExplosion1);
    audio_play_sound(soundExplosion1, 1, false);
    audio_stop_sound(soundRocketLaunchIndex);
    while (true)
    {
        var instFloor = instance_nearest(x, y, objFloor);
        if (instance_exists(instFloor) && distance_to_object(instFloor) < 15)
        {
            with (instFloor)
            {
                deathType = 0;
                instance_create(instFloor.x, instFloor.y, objExplosion1);
                instance_destroy();
            }
        }
        else
        {
            break;
        }
    }
    
    while (true)
    {
        var instRobot = instance_nearest(x, y, objRobotParent);
        if (instance_exists(instRobot) && distance_to_object(instRobot) < 10)
        {
            with (instRobot)
            {
                deathType = 0;
                instance_destroy();
            }
        }
        else
        {
            break;
        }
    }
}

