{
    
    if (active)
    {
        if (!creator.crouching)
        {
            draw_sprite_ext(sprite_index, -1, creator.x + (12 * creator.dir), creator.y - 18, creator.dir, 1, 0, c_white, 1);
            draw_sprite_ext(sprIceShieldCorroded, -1, creator.x + (12 * creator.dir), creator.y - 18, creator.dir, 1, 0, c_white, corrosion);
        }
        else
        {
            draw_sprite_ext(sprite_index, -1, creator.x + (12 * creator.dir), creator.y - 10, creator.dir, 1, 0, c_white, 1);
            draw_sprite_ext(sprIceShieldCorroded, -1, creator.x + (12 * creator.dir), creator.y - 10, creator.dir, 1, 0, c_white, corrosion);
        }
    }
    else
    {
        if (creator.climbing)
        {
            draw_sprite_ext(sprIceShieldBack, -1, creator.x, creator.y - 11, creator.dir, 1, 0, c_white, 1);
            draw_sprite_ext(sprIceShieldBackCorroded, -1, creator.x, creator.y - 11, creator.dir, 1, 0, c_white, corrosion);
        }
    }
}

