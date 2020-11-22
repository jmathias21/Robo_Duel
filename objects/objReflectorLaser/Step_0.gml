{
    if (shrink)
    {
        image_xscale -= .1;
        image_yscale -= .1;
        if (image_xscale < 0)
        {
            instance_destroy();
        }
    }
    if (grow)
    {
        image_xscale += .1;
        image_yscale += .1;
        if (image_xscale > 1)
        {
            image_xscale = 1;
            image_yscale = 1;
            grow = false;
        }
    }
}

