{
    image_speed = .15;
    image_index = 0;
    audio_play_sound(soundGrowIce, 1, false);
    active = true;
    life = 100;
    hit = false;
    corrosion = 0;
    
    // Fake these robot variables to enable robot collisions with ice
    falling = false;
    inAir = true;
    running = true;
    rolling = false;
    
    alarm[0] = 70;
    alarm[1] = 10;
}

