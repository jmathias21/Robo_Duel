{
    switch (floor(random(2)))
    {
        case 0:
            var deathRayBall = instance_create(ceil(room_width / 2), -30, objDeathRayBall);
            deathRayBall.vspeed = .3;
            deathRayBall.side = 0;
        break;
        
        case 1:
            var deathRayBall = instance_create(ceil(room_width / 2), room_height + 30, objDeathRayBall);
            deathRayBall.vspeed = -.3;
            deathRayBall.side = 1;
        break;
    }
    instance_destroy();
}

