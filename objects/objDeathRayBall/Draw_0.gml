{
    draw_self();
    
    if (mode != -1)
    {
        var color1;
        var color2;
        var color3;
        
        var color4 = make_color_rgb(255, 100, 100);
        
        switch (mode)
        {
            case 0:
                color1 = make_color_rgb(0, 255, 0);
                color2 = make_color_rgb(0, 230, 0);
                color3 = make_color_rgb(0, 200, 0);
            break;
            
            case 1:
                color1 = make_color_rgb(245, 0, 0);
                color2 = make_color_rgb(220, 0, 0);
                color3 = make_color_rgb(200, 0, 0);
            break;
        }
        
        draw_primitive_begin(pr_trianglelist);
        for (i = 0; i < precision; i += 1)
        {
            draw_vertex_color(nodeArray[i].x, nodeArray[i].y, color1, .3);
            draw_vertex_color(nodeArray[i + 1].x, nodeArray[i + 1].y, color2, .3);
            draw_vertex_color(x, y, color3, .3);
        }
        draw_primitive_end();
        
        if (attack)
        {
            draw_line_width_color(x, y, laserNode.x, laserNode.y, 3, color1, color3);
            draw_line_width_color(x, y, laserNode.x + lengthdir_x(2, direction - 90), laserNode.y + lengthdir_x(2, direction - 90), 1, color4, color4);
            draw_line_width_color(x, y, laserNode.x + lengthdir_x(2, direction + 90), laserNode.y + lengthdir_x(2, direction - 90), 1, color4, color4);
        }
    }
}

