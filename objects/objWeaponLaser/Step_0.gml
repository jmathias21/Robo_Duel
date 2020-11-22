{
    var count = 0;
    var instLowestDistance = noone;
    distance = room_width;
    
    // Run through every instance in collision line and store them in array, as well as the lowest distance instance
    do
    {
        var inst = collision_line(x, y - 1, x + (distance * ldirection), y - 1, all, false, true);
        var validTarget = false;
        
        if (inst == noone) break;
        
        for (i = 0; i < array_length_1d(targets); i += 1)
        {
            if (inst.object_index == targets[i])
                validTarget = true;
        }
        if (!validTarget)
        {
            instArray[count] = inst;
            instance_deactivate_object(inst);
            count += 1;
            continue;
        }
        
        if (instLowestDistance == noone)
        {
            instLowestDistance = inst;
        }
        
        instArray[count] = inst;
        inst.distance = abs(inst.x - x);
        if (inst.distance < instLowestDistance.distance && validTarget)
        {
            instLowestDistance = inst;
        }
        instance_deactivate_object(inst);
        count += 1;
    }
    until (inst == noone)
    
    if (count > 0)
    {
        for (i = 0; i < array_length_1d(instArray); i += 1)
        {
            instance_activate_object(instArray[i]);
        }
    }
    
    if (instLowestDistance != noone)
    {
        distance = instLowestDistance.distance;
        
        // Damage the lowest distance instance
        if (instLowestDistance.object_index == objIceShield)
        {
            instLowestDistance.life -= 1.5;
            instLowestDistance.hit = true;
        }
        else if (instLowestDistance.object_index == objIcicle)
        {
            instLowestDistance.life -= 5;
        }
        else if (instLowestDistance.object_index == objItem)
        {
            with (instLowestDistance)
            {
                instLowestDistance.alive = false;
            }
        }
        else if (object_get_parent(instLowestDistance.object_index) == objRobotParent)
        {
            with (instLowestDistance)
            {
                instLowestDistance.deathType = 0;
                instance_destroy();
            }
        }
        else if (instLowestDistance.object_index == objWeaponHomingRocket)
        {
            with (instLowestDistance)
            {
                instance_destroy();
            }
        }
    }
}

