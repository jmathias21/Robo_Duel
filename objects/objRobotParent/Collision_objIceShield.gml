{
    if (rolling)
    {
        other.rolling = true;
    }
    else
    {
        other.rolling = false;
    }

    if (other.active)
    {
        if (other.corrosion >= .8)
        {
            deathType = 1;
            instance_destroy();
        }
        RobotCollision();
    }
    
    if (!falling)
    {
        other.life -= 50;
        other.hit = true;
    }
}

