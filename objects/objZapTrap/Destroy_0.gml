{
    if (dir == 0)
        audio_stop_sound(sound);
    instance_create(x, y, objExplosion3);
    if (instance_exists(partner))
    {
        with (partner)
        {
            instance_destroy();
        }
    }
}

