{
    timeLimitSeconds += 15;
    if (timeLimitSeconds >= 60)
    {
        timeLimitSeconds = 0;
        timeLimitMinutes += 1;
    }
    if (timeLimitMinutes >= 5 && timeLimitSeconds > 0)
    {
        timeLimitMinutes = 0;
        timeLimitSeconds = 0;
    }
}

