{
    if (suddenDeath && !eventMayhem)
    {
        alarm[2] = -1;
        exit;
    }
    switch(eventRate)
    {
        case 1:
            alarm[2] = 2200;
        break;
        
        case 2:
            alarm[2] = 1800;
        break;
        
        case 3:
            alarm[2] = 1300;
        break;
    }
    
    
    odds = -1;
    if (instance_number(objFloor) / global.floorCount < .92)
    {
        odds = 2;
    }
    if (instance_number(objFloor) / global.floorCount < .86)
    {
        odds = 1.5;
    }
    if (instance_number(objFloor) / global.floorCount < .75)
    {
        odds = 1;
    }
    if (odds != -1 && floor(random(odds)) == 0)
    {
        if (global.eventRestoreDifficulty != 4)
            instance_create(0, 0, objRestoreEvent);
    }
}

