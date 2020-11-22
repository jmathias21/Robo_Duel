{
    if (spin)
    {
        image_angle += spinSpeed;
        spinSpeed += .1;
        if (spinSpeed > 20)
            spinSpeed = 20;
    }
}

