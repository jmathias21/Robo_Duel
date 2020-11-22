{
    var instMortarRound = instance_create(x, y - 10, objMortarRound);
    instMortarRound.speed = 4 + (3 * (chargeIndex / chargeMax));
    instMortarRound.chargePercent = chargeIndex / chargeMax;
    instMortarRound.dir = dir;
    instance_create(x, y - 11, objSmoke3);
    fired = true;
    audio_play_sound(soundMortarLaunch, 1, false);
    alarm[0] = 25;
}

