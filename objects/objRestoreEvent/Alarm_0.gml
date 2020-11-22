{
    if (counter > 3)
    {
        instance_destroy();
    }
    
    alarm[0] = random(50);
    if (floor(random(2)) == 1)
    {
        xPos = -100;
        horizSpeed = 1.3;
    }
    else
    {
        xPos = room_width + 100;
        horizSpeed = -1.3;
    }
        
    var inst = instance_create(xPos, 18 + (counter * 42), objRestorerDrone);
    inst.hspeed = horizSpeed;
    
    counter += 1;
}

