{
    draw_sprite_ext(sprWeaponLaserExtended2, -1, x + (0 * ldirection) , y, ldirection * distance, 1, 0, c_white, 1);
    draw_sprite_ext(sprite_index, image_index, x, y, ldirection, 1, 0, c_white, 1);
    
    var laserWidth = sprite_get_width(sprWeaponLaserExtended);
    var laserExtendCount = ceil(room_width / laserWidth);
}

