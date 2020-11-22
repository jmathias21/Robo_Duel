{
    image_angle += rotateSpeed;
    
    collisionFloor = collision_rectangle(x - (maskWidth / 2), y + 1, x + (maskWidth / 2), y + vspeed + 1, objFloor, false, true);
    
    if (collisionFloor != noone && vspeed >= 0)
    {
        y = collisionFloor.y;
        vspeed = 0;
        gravity = 0;
        
        //if (hspeed > 0 || hspeed < 0)
        {
            rotateSpeed /= 1.2;
            hspeed /= 1.2;
        }
    }
    else
    {
        gravity = .1;
    }
    
    if (dead)
    {
        image_alpha -= .05;
        if (image_alpha < 0)
        {
            instance_destroy();   
        }
    }
}

