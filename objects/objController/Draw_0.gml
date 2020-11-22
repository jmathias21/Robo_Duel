{
    texture_set_interpolation(false);
    
    if (drawTimer && !suddenDeath)
    {
        draw_set_halign(fa_center);
        draw_text_color(room_width / 2 + 1, 3, string_hash_to_newline(string(timeLimitMinutes) + ":" + string_replace(string_format(timeLimitSeconds, 2, 0), " ", "0")), c_black, c_black, c_black, c_black, .3);
        draw_text_color(room_width / 2, 2, string_hash_to_newline(string(timeLimitMinutes) + ":" + string_replace(string_format(timeLimitSeconds, 2, 0), " ", "0")), c_white, c_white, c_white, c_white, 1);
    }
}

