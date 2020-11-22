{
    difficulty = global.eventAcidRainDifficulty;

    alarm[0] = 850 + random(200);
    switch (difficulty)
    {
        case 1:
            alarm[1] = 350;
        break;
        
        case 2:
            alarm[1] = 250;
        break;
        
        case 3:
            alarm[1] = 150;
        break;
    }
    alarm[2] = 50;
    
    rainDensity = 0;
    playDroplets = true;
    sound = noone;
    
    audio_play_sound(soundAcidRainDrop1, 1, false);
}

