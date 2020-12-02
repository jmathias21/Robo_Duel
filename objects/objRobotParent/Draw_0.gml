{
    // Players other than player 1 are blended a different color
    if (player != 0)
    {
        shader_set(shColorReplaceBlend);
        shader_set_uniform_color(hnd_colorIn, colorIn, 1.0);
        shader_set_uniform_color(hnd_colorOut, colorOut, 1.0);
        shader_set_uniform_f(hnd_colorTolerance, .13, 1, 1, 1);
        shader_set_uniform_f(hnd_blend, 1);
        draw_sprite_ext(sprite_index, -1, x, y, faceDir, 1, 0, image_blend, 1);
        shader_reset();
    }
    else
    {
        draw_sprite_ext(sprite_index, -1, x, y, faceDir, 1, 0, image_blend, 1);
    }
    
    /*draw_set_color(c_black);
    draw_rectangle(x - (maskWidth / 2), y, x + (maskWidth / 2), y + vspeed, false);
    draw_set_color(c_white);*/
}

/* */
/*  */
