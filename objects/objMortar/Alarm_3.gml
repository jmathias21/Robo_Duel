{
    alarm[3] = 1;
    image_yscale -= .2;
    if (image_yscale <= 0)
        instance_destroy();
}

