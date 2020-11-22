{
    alarm[7] = 250;
    mode = -1;
    finished = true;
    audio_stop_sound(soundDeathRayBallScan);
    audio_stop_sound(soundDeathRayBallOpenEye);
    audio_sound_gain(soundMain, 0, 2000);
    image_index = 0;
    if (side == 0)
        vspeed = -.3;
    if (side == 1)
        vspeed = .3;
}

