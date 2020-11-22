{
    switch (difficulty)
    {
        case 1:
            alarm[0] = 200;
        break;
        
        case 2:
            alarm[0] = 150;
        break;
        
        case 3:
            alarm[0] = 80;
        break;
    }
    instance_create(20 + random(room_width - 20), -33, objIcicle);
}

