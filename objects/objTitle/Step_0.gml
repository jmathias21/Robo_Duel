{
    if (y < finalY)
    {
        y += 10;
    }
    else if (!inPlace)
    {
        inPlace = true;
        alarm[0] = 2;
    }
        
    image_xscale = 1 + ((finalY - y) / 100);
    image_yscale = 1 + ((finalY - y) / 100);
}

