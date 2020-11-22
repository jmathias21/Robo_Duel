{
    draw_set_halign(fa_right);
    draw_text_color(x - 9, y + 1, string_hash_to_newline("Players"), c_black, c_black, c_black, c_black, 1);
    draw_text(x - 10, y, string_hash_to_newline("Players"));
    draw_set_halign(fa_left);
    draw_sprite_ext(sprite_index, -1, x + 1, y + 1, 1, 1, 0, c_black, .35);
    draw_self();
    draw_set_font(fontSetupNumber);
    draw_text_color(x + 5, y + 1, string_hash_to_newline(string(players)), c_black, c_black, c_black, c_black, .3);
    draw_text_color(x + 4, y, string_hash_to_newline(string(players)), c_lime, c_lime, c_lime, c_lime, 1);
    draw_set_font(fontSetup);
}

