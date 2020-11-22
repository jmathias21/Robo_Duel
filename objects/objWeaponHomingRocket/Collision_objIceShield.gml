{
    if (!deflected)
    {
        deflected = true;
        direction = direction + 180;
        other.life -= 25;
        with (other)
        {
            event_user(0);
        }
    }
}

