{
    draw_self();
    
    if (!fired)
        draw_sprite_ext(sprMortarCharge, chargeIndex, x + (dir * 7), y, 1, 1, 0, c_white, 1);
}

