{
    // Set window properties
    //  window_set_fullscreen(true);
    randomize();
    
    global.Player1 = objRobot1;
    global.Player2 = objRobot2;
    global.Player3 = objRobot3;
    global.Player4 = objRobot4;
    
    global.player2Color = make_color_rgb(47, 175, 244);
    global.player3Color = make_color_rgb(248, 170, 99);
    global.player4Color = make_color_rgb(40, 213, 49);
    
    audio_stop_all();
    audio_play_sound(musicArena2, 1, true);
    
    timeLimitMinutes = global.timeLimitMinutes;
    timeLimitSeconds = global.timeLimitSeconds;
    eventRate = global.settingEventRate;
    suddenDeathEnabled = global.settingSuddenDeath;
    eventMayhemEnabled = global.settingEventMayhem;
    
    eventMayhemInterval = 400;
    
    alarm[0] = 50;
    alarm[3] = 300;
    
    if (eventRate == 0)
    {
        alarm[1] = -1;
        alarm[2] = -1;
    }
    switch(eventRate)
    {
        case 1:
            alarm[1] = 1400;
            alarm[2] = 2700;
        break;
        
        case 2:
            alarm[1] = 1000;
            alarm[2] = 2300;
        break;
        
        case 3:
            alarm[1] = 600;
            alarm[2] = 1900;
        break;
    }
    
    instance_create(0, 0, objRoomCreator);
    instance_create(0, 0, objParticleSystemController);
    CreatePlayers();
    
    soundMuted = false;
    playEvents = true;
    createItems = true;
    drawTimer = false;
    suddenDeath = false;
    eventMayhem = false;
}

