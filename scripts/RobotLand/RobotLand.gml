function RobotLand() {
	var soundLand = audio_play_sound(soundFootstep, 1, false);
	audio_sound_gain(soundLand, vspeed / 10, 0);
		
	if (collisionFloor.electrified) {
	    deathType = 2;
	    instance_destroy();
	}
}