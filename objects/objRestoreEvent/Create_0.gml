{
    counter = 0;
    alarm[0] = 1;
    alarm[1] = 400;
    
    with (objFloorGhost)
    {
        spotted = false;
    }
    sound = audio_play_sound(soundDrone2, 3, false);
    audio_sound_gain(sound, 0, 0);
    audio_sound_gain(sound, 1, 1000);
}

