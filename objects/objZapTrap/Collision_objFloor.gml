{
    if (!collided)
    {
        audio_play_sound(soundMetalCollision, 1, false);
        collided = true;
        if (dir == 0)
        {
            alarm[1] = 20;
            y = other.y + sprite_get_height(sprite_index);
        }
        else
        {
            y = other.y;
        }
        vspeed = 0;
    }
}

