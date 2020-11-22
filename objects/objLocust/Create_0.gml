{
    image_speed = 0;
    image_index = 0;
    maskWidth = bbox_right - bbox_left;
    
    if (floor(random(2)) == 0)
    {
        hspeed = -1 + random(.5);
    }
    else
    {
        hspeed = 1 - random(.5);
    }
    
    alarm[0] = 30;
}

