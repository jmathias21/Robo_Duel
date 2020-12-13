function RobotLandOnFloor() {
	y = collisionFloor.y - 1;
	vspeed = 0;
	
	var soundLand = audio_play_sound(soundFootstep, 1, false);
	audio_sound_gain(soundLand, vspeed / 10, 0);
	
	if (collisionFloor.electrified) {
		RobotDestroy(2);
	}
	
	if ((pressRun && onFloor && pressRoll) || (landingOnFloor && (pressCrouch || pressRoll))) {
		faceDir = pressRunDir != 0 ? pressRunDir : faceDir;
        RobotRoll();
		return;
    }
	
	if (pressRun) {
		RobotRun();
		return;
	} else {
		RobotStand();
		return;
	}
}