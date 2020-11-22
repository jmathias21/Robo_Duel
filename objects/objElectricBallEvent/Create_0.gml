{
    if (floor(random(2)) == 1)
    {
        xPos = -200;
        horizSpeed = .9;
    }
    else
    {
        xPos = room_width + 200;
        horizSpeed = -.9;
    }
        
    var inst = instance_create(xPos, 70 + (floor(random(4)) * 42), objElectricBall);
    inst.hspeed = horizSpeed;
    
    alarm[0] = 900;
}

