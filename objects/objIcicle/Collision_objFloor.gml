{
    if (floor(random(2)) == 1 && collisionCount < 1)
    {
        if (floor(random(2)) == 1)
        {
            audio_play_sound(soundFloorBreak1, 1, false);
        }
        else
        {
            audio_play_sound(soundFloorBreak2, 1, false);
        }
        with (other)
        {
            deathType = 0;
            instance_destroy();
        }
        collisionCount += 1;
    }
    else
    {
        audio_play_sound(soundIcicleCrash, 1, false);    
    
        y = other.y - 23;
        mask_index = sprIcicleMask;
        vspeed = 0;
        gravity = 0;
        
        repeat (5)
        {
            var inst = instance_create(x, y + 20, objDebris2);
            inst.speed = .3 + random(3);
            inst.direction = 10 + random(160);
        }
    }
}

