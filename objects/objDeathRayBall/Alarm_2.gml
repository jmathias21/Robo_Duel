{
    sprite_index = sprDeathRayBall;
    image_index = image_number - 1;
    attack = false;
    mode = -1;
    laserNode = noone;
    alarm[1] = -1; // Make sure pending attacks are shut down
    alarm[4] = 50;
    audio_stop_sound(soundLaserBeam);
}

