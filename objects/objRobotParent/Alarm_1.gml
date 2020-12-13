{
    if (state == activeState.shooting) {
        switch (item) {
            case 1:
                instWeaponLaser = instance_create(x + (15 * faceDir), y - 21, objWeaponLaser);
                instWeaponLaser.ldirection = faceDir;
                instWeaponLaser.alarm[0] = 27;
                instWeaponLaser.player = id;
                sprite_index = sprRobotShoot2;
                image_speed = .2;
                audio_play_sound(soundLaserShoot, 2, false);
                audio_stop_sound(soundLaserChargeIndex);
            break;
            
            case 2:
                instance_create(x + (8 * faceDir), y + 1, objWeaponMine);
                audio_play_sound(soundMinePlant, 1, false);
            break;
            
            case 3:
                instWeaponRocket = instance_create(x + (15 * faceDir), y - 21, objWeaponHomingRocket);
                instWeaponRocket.target = otherPlayer;
                if (faceDir == 1)
                    instWeaponRocket.direction = 0;
                else
                    instWeaponRocket.direction = 180;
                sprite_index = sprRobotShoot2;
                image_speed = .2;
                audio_play_sound(soundLaserShoot, 2, false);
                audio_stop_sound(soundLaserChargeIndex);
            break;
            
            case 5:
                instZapTrapUp = instance_create(x + (15 * faceDir), y - 21, objZapTrap);
                instZapTrapUp.dir = 0;
                instZapTrapDown = instance_create(x + (15 * faceDir), y - 17, objZapTrap);
                instZapTrapDown.dir = 1;
                instZapTrapUp.partner = instZapTrapDown;
                instZapTrapDown.partner = instZapTrapUp;
            break;
            
            case 7:
                instRubber = instance_create(x + (15 * faceDir), y - 19, objRubber);
                instRubber.dir = faceDir;
            break;
            
            case 8:
                instMortar = instance_create(x + (12 * faceDir), y + 1, objMortar);
                instMortar.dir = faceDir;
            break;
        }
    }
}

