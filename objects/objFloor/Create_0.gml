{
    if (place_meeting(x, y, objFloor))
    {
        deathType = -1;
        instance_destroy();
    }

    corrosion = 0;
    deathType = -1;
    electrified = false;
    electrifiedOther = false;
    life = 100;
    spotted = false;
    alarm[0] = 20;
    alarm[1] = 5;
    alarm[3] = random(20000);
    image_speed = 0;
}

