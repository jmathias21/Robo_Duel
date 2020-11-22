{
    var color = make_color_rgb(0, 23, 36);
    
    //draw_set_blend_mode_ext(bm_src_alpha, bm_one);
    draw_set_blend_mode(bm_add);
    //draw_set_color(c_blue);
    draw_circle_color(x, y, 100, color, c_black, false);
    //draw_set_color(c_black);
    draw_set_blend_mode(bm_normal);
}

