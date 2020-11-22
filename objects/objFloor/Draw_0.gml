{
    draw_sprite_ext(sprite_index, 0, x + 2, y + 2, 1, 1, 0, c_black, .3);
    draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, c_white, 1);
    if (corrosion > 0)
    {
        draw_sprite_ext(sprFloorCorroded, 0, x, y, 1, 1, 0, c_white, corrosion);
    }
    else if (electrified)
    {
        draw_sprite_ext(sprFloorElectrified, image_index, x, y, 1, 1, 0, c_white, 1);
    }
}

