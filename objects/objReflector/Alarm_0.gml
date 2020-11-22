/*{
    if (!spin)
    {
        alarm[0] = 100;
        var instLaser1 = instance_create(x, y, objReflectorLaser);
        instLaser1.hspeed = -5;
        var instLaser2 = instance_create(x, y, objReflectorLaser);
        instLaser2.hspeed = 5;
    }
    else
    {
        alarm[0] = 50;
        var instLaser = instance_create(x, y, objReflectorLaser);
        instLaser.hspeed = -3;
        instLaser.direction = image_angle;
    }
}

/* */
/*  */
