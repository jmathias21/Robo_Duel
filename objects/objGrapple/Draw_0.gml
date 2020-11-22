{
    draw_line(x, y, x + (grapplePos * dir), y - grapplePos);
    draw_sprite_ext(sprite_index, 0, x, y, dir, 1, 0, c_white, 1);
    //draw_circle(x, y, 3, 0);
}

