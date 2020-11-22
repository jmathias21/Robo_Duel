{
    if (instance_exists(objAcidRainEvent) && objAcidRainEvent.playDroplets)
    {
        if (floor(random(2)) == 1)
            audio_play_sound(soundAcidRainDrop1, 1, false);
        else
            audio_play_sound(soundAcidRainDrop2, 1, false);
    }
    vspeed = 0;
    y = other.y;
    other.corrosion += .03;
    if (other.corrosion > .8)
    {
        with (other)
        {
            deathType = 1;
            electrified = false;
            instance_destroy();
        }
    }
    image_speed = .4;
}

