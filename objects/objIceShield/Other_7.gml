{
    if (sprite_index == sprIceShield)
    {
        image_index = image_number - 1;
        image_speed = 0;
        sprite_index = sprIceShieldAnimate;
    }
    if (sprite_index == sprIceShieldAnimate)
    {
        image_index = 0;
        image_speed = 0;
    }
}

