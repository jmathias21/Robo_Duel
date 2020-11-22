{
    rate += 1;
    if (rate > 3)
        rate = 0;
        
    switch (rate)
    {
        case 0:
            rateString = "Off";
        break;
        
        case 1:
            rateString = "Low";
        break;
        
        case 2:
            rateString = "Med";
        break;
        
        case 3:
            rateString = "High";
        break;
    }
}

