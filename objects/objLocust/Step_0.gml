{
    image_angle -= hspeed * 5;
    
    collisionFloor = collision_rectangle(x - (maskWidth / 2), y + 5, x + (maskWidth / 2), y + vspeed + 5, objFloor, false, true);
    
    if (collisionFloor != noone && vspeed >= 0)
    {
        y = collisionFloor.y - 4;
        vspeed = 0;
        gravity = 0;
    }
    else
    {
        gravity = .1;
    }
}

