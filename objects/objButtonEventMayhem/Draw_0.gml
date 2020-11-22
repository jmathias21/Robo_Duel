{
    if (!active)
    {
        image_alpha = .3;
        draw_set_alpha(.3);
    }
    else
    {
        image_alpha = 1;
        draw_set_alpha(1);
    }
    draw_set_halign(fa_right);
    draw_set_color(c_black);
    draw_text(x - 9, y + 1, string_hash_to_newline("Event Mayhem"));
    draw_set_color(c_white);
    draw_text(x - 10, y, string_hash_to_newline("Event Mayhem"));
    draw_set_halign(fa_left);
    draw_sprite_ext(sprite_index, -1, x + 1, y + 1, 1, 1, 0, c_black, .35);
    draw_self();
    draw_set_alpha(1);
}
