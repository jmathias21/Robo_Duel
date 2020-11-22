{
    if (y < other.y)
    {
        audio_play_sound(soundFloorBreak2, 1, false);
        with (other) instance_destroy();
    }
}

