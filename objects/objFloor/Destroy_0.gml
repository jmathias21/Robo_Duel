{
    if (deathType != -1)
    {
        instance_create(x, y, objFloorGhost);
        part_emitter_region(global.partSystem1, global.smoke2Emitter, x, x, y, y, ps_shape_rectangle, ps_distr_linear);
    }
    switch (deathType)
    {
        case 0:
            repeat (5)
            {
                var inst = instance_create(x, y, objDebris1);
                inst.direction = 50 + random(80);
                inst.speed = 2 + random(2);
                part_emitter_burst(global.partSystem1, global.smoke2Emitter, global.partTypeSmoke2, 2);
            }
        break;
        
        case 1:
            repeat (3)
            {
                var inst = instance_create(x, y, objDebris1);
                inst.direction = 240 + random(60);
                inst.speed = .1 + random(.5);
                part_emitter_burst(global.partSystem1, global.smoke2Emitter, global.partTypeSmoke2, 2);
            }
        break;
    }
}

