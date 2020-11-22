{
    switch(eventRate)
    {
        case 1:
            alarm[1] = 2200;
        break;
        
        case 2:
            alarm[1] = 1800;
        break;
        
        case 3:
            alarm[1] = 1300;
        break;
    }
    if (eventMayhem)
    {
        alarm[1] = eventMayhemInterval;
        eventMayhemInterval -= 30;
        if (eventMayhemInterval < 100)
            eventMayhemInterval = 100;
    }
    
    if (playEvents)
    {
        var event = floor(random(4));
        switch (event)
        {
            case 0:
                if (global.eventAcidRainDifficulty == 4)
                {
                    alarm[1] = 1;
                }
                else
                {
                    audio_stop_sound(soundAcidRain);
                    instance_create(0, 0, objAcidRainEvent);
                }
            break;
            
            case 1:
                if (global.eventElectricBallDifficulty == 4)
                {
                    alarm[1] = 1;
                }
                else
                {
                    instance_create(0, 0, objElectricBallEvent);
                }
            break;
            
            case 2:
                if (global.eventIcicleDifficulty == 4)
                {
                    alarm[1] = 1;
                }
                else
                {
                    instance_create(0, 0, objIcicleShowerEvent);
                }
            break;
            
            case 3:
                if (global.eventDeathRayBallDifficulty == 4)
                {
                    alarm[1] = 1;
                }
                else
                {
                    instance_create(0, 0, objDeathRayBallEvent);
                }
            break;
            
            case 4:
                if (global.eventDeathRayBallDifficulty == 4)
                {
                    alarm[1] = 1;
                }
                else
                {
                    instance_create(0, 0, objLocustEvent);
                }
            break;
        }
    }
}

