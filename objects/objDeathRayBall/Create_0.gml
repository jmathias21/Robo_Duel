{
    soundMain = audio_play_sound(soundDeathRayBall, 1, true);
    audio_sound_gain(soundMain, 0, 0);
    audio_sound_gain(soundMain, .8, 1000);
    difficulty = global.eventDeathRayBallDifficulty;
    
    image_speed = 0;
    image_index = 0;
    
    if (floor(random(2)) == 1)
        rayDir = 180;
    else
        rayDir = 0;
    turnSpeed = 0;
    laserDir = 0;
    robotDirection = 0;
    lastDir = 0;
    field = 0;
    precision = 0;
    side = 0;
    changeDir = false;
    rotateDir = 0;
    finished = false;
    
    switch (difficulty)
    {
        case 1:
            turnSpeed = .6;
            field = 15;
            precision = 20;
        break;
        
        case 2:
            turnSpeed = 1;
            field = 20;
            precision = 25;
        break;
        
        case 3:
            turnSpeed = 1.5;
            field = 50;
            precision = 50;
        break;
    }
    
    mode = -1;
    spotted = false;
    attack = false;
    clockwise = true;
    switchDirection = false;
    rotating = true;
    
    alarm[3] = 230;
    alarm[6] = 1400;
}

{    
    //color1 = make_color_rgb(200, 0, 0);
    //color2 = make_color_rgb(255, 80, 80);
    sparkEmitter = part_emitter_create(global.partSystem1);
}

