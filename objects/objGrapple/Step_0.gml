{
    grapplePos += 5;
    
    var inst = collision_line(x, y, x + (grapplePos * dir), y - grapplePos, objFloor, false, true);
    
    if (inst != noone && !grapplingPull)
    {
        targetPos = grapplePos;
        with (creator)
        {
            grapplingPull = true;
            other.grapplingPull = true;
        }
    }
    
    if (grapplingPull)
    {
        creator.sprite_index = sprRobotGrapplePull;
        if (targetPos > 0)
        {
            creator.running = false;
            creator.vspeed = 0;
            targetPos -= 1;
            creator.x += dir;
            creator.y -= 1;
        }
        else
        {
            creator.grapplingPull = false;
            creator.grappling = false;
            instance_destroy();
        }
    }
    else if (grapplePos > 150)
    {
        instance_destroy();
    }
}

