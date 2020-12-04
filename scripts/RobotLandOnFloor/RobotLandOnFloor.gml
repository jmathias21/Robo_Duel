function RobotLandOnFloor() {
	y = collisionFloor.y - 1;
	vspeed = 0;
	
	var soundLand = audio_play_sound(soundFootstep, 1, false);
	audio_sound_gain(soundLand, vspeed / 10, 0);
	
	if (collisionFloor.electrified) {
		RobotDestroy(2);
	}
}