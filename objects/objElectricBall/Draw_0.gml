{
    draw_sprite_ext(sprElectricBallAttack, -1, x, y, 1, 1, 0, c_white, 1);
    draw_sprite_ext(sprite_index, -1, x, y + 1, 1, 1, 0, c_white, 1);
    if (zapUp)
    {
        draw_sprite(sprElectricBallZap, zapUpIndex, x, y);
    }
    if (zapDown)
    {
        draw_sprite(sprElectricBallZap, zapDownIndex, x, y);
    }
}

