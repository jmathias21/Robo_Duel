{
    instance_create(x, y, objExplosion2);
    repeat (5)
    {
        var inst = instance_create(x, y, objDebris1);
        inst.direction = 50 + random(80);
        inst.speed = .5 + random(4);
    }
}

