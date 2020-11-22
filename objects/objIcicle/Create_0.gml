{
    difficulty = global.eventIcicleDifficulty;

    vspeed = 0;
    gravity = 0;
    image_speed = 0;
    image_index = floor(random(3));
    
    alarm[0] = 800 + random(300);
    alarm[1] = 5;
    alarm[2] = 70;
    
    collisionCount = 0;
    falling = false;
    peeking = true;
    electrified = false;
    life = 100;
}

