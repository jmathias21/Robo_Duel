{
    image_speed = .18;
    image_index = 0;
    
    alarm[0] = 50;
    alarm[2] = 50;
    zapDown = false;
    zapUp = false;
    zapped = 0;
    zapDownIndex = 0;
    zapUpIndex = 0;
    checkNumber = 0;
    
    //var attack = instance_create(x, y, objElectricBallAttack);
    //attack.creator = id;
    
    audio_play_sound(soundElectricBall1, 1, true);
    audio_play_sound(soundElectricBall2, 1, true);
    audio_sound_gain(soundElectricBall1, 0, 0);
    audio_sound_gain(soundElectricBall1, 1, 5000);
    audio_sound_gain(soundElectricBall2, 0, 0);
    audio_sound_gain(soundElectricBall2, 1, 5000);
}

