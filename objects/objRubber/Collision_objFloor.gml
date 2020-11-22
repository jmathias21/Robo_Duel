{
    instance_destroy();
    var instRubberSplat = instance_create(x, other.y, objRubberSplat);
    instRubberSplat.collided = other.id;
    audio_play_sound(soundSplat, 1, false);
}

