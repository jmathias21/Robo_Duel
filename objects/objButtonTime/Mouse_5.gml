{
    timeLimitSeconds -= 15;
    if (timeLimitSeconds < 0)
    {
        timeLimitSeconds = 45;
        timeLimitMinutes -= 1;
    }
    if (timeLimitMinutes < 0)
    {
        timeLimitMinutes = 5;
        timeLimitSeconds = 0;
    }
}

