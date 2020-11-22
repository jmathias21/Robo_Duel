{
    alarm[2] = 20;
    if (hspeed > 0 && x > room_width)
    {
        alarm[2] = -1;
        audio_sound_gain(soundElectricBall1, 0, 3000);
        audio_sound_gain(soundElectricBall2, 0, 3000);
    }
    else if (hspeed < 0 && x < 0)
    {
        alarm[2] = -1;
        audio_sound_gain(soundElectricBall1, 0, 3000);
        audio_sound_gain(soundElectricBall2, 0, 3000);
    }
}

