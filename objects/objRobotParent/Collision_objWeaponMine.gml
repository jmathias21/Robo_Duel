{
    if (other.deadly)
    {
        audio_play_sound(soundExplosion1, 1, false);
        
        with (other)
        {
            deathType = 0;
            instance_destroy();
        }
        
        instance_destroy();
    }
}

