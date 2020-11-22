{
    alarm[2] = 10;
    chargeIndex += 1;
    if (chargeIndex >= chargeMax)
    {
        if (!fired)
            event_user(0);
    }
}

