{
    draw_set_halign(fa_right);
    draw_text_color(x - 9, y + 1, string_hash_to_newline("Time Limit"), c_black, c_black, c_black, c_black, 1);
    draw_text_color(x - 10, y, string_hash_to_newline("Time Limit"), c_white, c_white, c_white, c_white, 1);
    draw_set_halign(fa_left);
    draw_sprite_ext(sprite_index, -1, x + 1, y + 1, 1, 1, 0, c_black, .35);
    draw_self();
    draw_set_font(fontSetupNumber);
    draw_text_color(x + 5, y + 1, string_hash_to_newline(string(timeLimitMinutes)), c_black, c_black, c_black, c_black, .3);
    draw_text_color(x + 4, y, string_hash_to_newline(string(timeLimitMinutes)), c_lime, c_lime, c_lime, c_lime, 1);
    draw_text_color(x + 19, y + 1, string_hash_to_newline(string_replace(string_format(timeLimitSeconds, 2, 0), " ", "0")), c_black, c_black, c_black, c_black, .3);
    draw_text_color(x + 18, y, string_hash_to_newline(string_replace(string_format(timeLimitSeconds, 2, 0), " ", "0")), c_lime, c_lime, c_lime, c_lime, 1);
    draw_set_font(fontSetup);
}

