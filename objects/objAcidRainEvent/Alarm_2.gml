{
    instance_create(random(room_width), -100, objAcidRain);
    switch (rainDensity)
    {
        case 0:
            alarm[2] = 50;
        break;
        
        case 1:
            switch (difficulty)
            {
                case 1:
                    alarm[2] = 2;
                break;
                
                case 2:
                    alarm[2] = 1;
                break;
                
                case 3:
                    alarm[2] = 1;
                    if (floor(random(2)) == 0)
                        instance_create(random(room_width), -100, objAcidRain);
                break;
            }
        break;
    }
}

