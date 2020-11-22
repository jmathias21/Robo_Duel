{
    alarm[4] = 60;
    timeLimitSeconds -= 1;
    if (timeLimitSeconds < 0)
    {
        timeLimitSeconds = 59;
        timeLimitMinutes -= 1;
    }
    if (timeLimitMinutes < 0 && !suddenDeath)
    {
        if (suddenDeathEnabled)
        {
            suddenDeath = true;
            instance_create(room_width / 2 - 4, -50, objMessageRobot);
            if (eventMayhemEnabled)
            {
                eventMayhem = true;
                alarm[1] = 1;
            }
            else
            {
                instance_create(0, 0, objSuddenDeathController);
            }
        }
        alarm[4] = -1;
    }
}

