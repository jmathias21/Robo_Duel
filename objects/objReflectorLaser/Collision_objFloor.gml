{
    if (!collided)
    {
        var inst = instance_create(x, y, objReflectorLaser);
        inst.speed = speed;
        inst.direction = direction + 180;
        shrink = true;
        speed = 0;
    }
}

