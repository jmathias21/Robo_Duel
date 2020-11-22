{
    if (!creator.shield)
        instance_destroy();
        
    if (!creator.crouching)
    {
        x = creator.x + (12 * creator.dir);
        y = creator.y - 18;
    }
    else
    {
        x = creator.x + (12 * creator.dir);
        y = creator.y - 10;
    }
    
    if (!creator.rolling && !creator.climbing)
        active = true;
    else
        active = false;
}

