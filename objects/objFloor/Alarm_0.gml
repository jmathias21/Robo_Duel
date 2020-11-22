{
    alarm[0] = 20;
    if (corrosion > 0 && !instance_exists(objAcidRainEvent))
    {
        corrosion -= .05;
    }
    
    if (life <= 0)
    {
        deathType = 0;
        instance_destroy();
    }
    
    life += 10;
    if (life > 100)
        life = 100;
}

