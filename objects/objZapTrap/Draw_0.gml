{
    if (dir == 0)
    {
        draw_sprite_ext(sprite_index, -1, x, y, 1, 1, 0, c_white, 1);
        if (instance_exists(partner))
        {
            var color1 = make_color_rgb(255, 64, 200);
            var color2 = make_color_rgb(255, 0, 128);
            if (electrified)
            {
                nodeInterval = partnerDistance / (nodeCount - 1);
                for (var i = 0; i < nodeCount - 1; i += 1)
                {
                    draw_line_width_color(node1[i], y + (nodeInterval * i), node1[i + 1], y + (nodeInterval * (i + 1)), .7, color1, color1);
                    draw_line_width_color(node2[i], y + (nodeInterval * i), node2[i + 1], y + (nodeInterval * (i + 1)), .7, color2, color2);
                }
            }
        }
    }
    if (dir == 1)
        draw_sprite_ext(sprite_index, -1, x, y, 1, -1, 0, c_white, 1);
}

