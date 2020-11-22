{
    draw_sprite_ext(sprite_index, -1, x, y, image_xscale, 1, image_angle, c_white, 1);
    draw_sprite_ext(sprRestorerRay, 0, x, y + 5, 1, 1, 0, c_white, 1);
    
    if (crane)
    {
        draw_line_width_color(x, y + 3, x, craneY, 1, c_gray, c_gray);
        draw_sprite_ext(sprFloor, 0, x, craneY, 1, 1, 0, c_white, .8);
    }
}

