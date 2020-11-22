{
    //draw_self();
    if (set)
    {
        var color1 = make_color_rgb(210, 0, 189);
        var color2 = make_color_rgb(179, 0, 160);
        draw_line_width_color(leftX, y - .5, rightX, y - .5, 1, color1, color1);
        draw_line_width_color(leftX + 2, y + .5, rightX - 2, y + .5, 1, color2, color2);
    }
}

