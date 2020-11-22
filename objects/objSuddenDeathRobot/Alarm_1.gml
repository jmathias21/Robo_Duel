{
    alarm[2] = 40;
    instance_create(x, y + 5, objSuddenDeathLaser);
    audio_play_sound(soundLaserShoot, 1, false);
    with (charge)
        instance_destroy();
}

