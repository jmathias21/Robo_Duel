{
    if (!soundMuted)
    {
        soundMuted = true;
        audio_master_gain(0);
    }
    else
    {
        soundMuted = false;
        audio_master_gain(1);
    }
}

