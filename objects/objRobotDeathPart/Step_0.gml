{
    maskWidth = bbox_right - bbox_left;
    collisionFloor = collision_rectangle(x - (maskWidth / 2), y + 1, x + (maskWidth / 2), y + vspeed + 1, objFloor, false, true);
    
    if (collisionFloor != noone && vspeed > 0)
    {
        jumping = false;
        speed = 0;
        rotationSpeed = 0;
        y = collisionFloor.y - 1;
    }
    
    image_angle += rotationSpeed;
}

