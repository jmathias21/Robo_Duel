{
    alarm[1] = 1;
    image_yscale += .3;
    if (image_yscale > 1)
    {
        image_yscale = 1;
        alarm[1] = -1;
    }
}

