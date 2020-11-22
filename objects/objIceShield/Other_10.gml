{
    repeat (3)
    {
        var inst = instance_create(x, y - 5 + random(10), objDebris2);
        inst.speed = .3 + random(1.2);
        inst.direction = -110 + random(40) + (90 * creator.dir);
    }
}

