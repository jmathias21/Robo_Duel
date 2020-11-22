{
    with (instIceShield)
    {
        instance_destroy();
    }
    
    switch (deathType)
    {
        case 0:
            var inst1 = instance_create(x, y - 30, objRobotDeathPart);
            inst1.sprite_index = sprRobotDeathHead;
            inst1.direction = 75 + random(30);
            inst1.speed = 3.5 + random(1);
            inst1.rotationSpeed = 8;
            
            var inst2 = instance_create(x, y - 10, objRobotDeathPart);
            inst2.sprite_index = sprRobotDeathTorso;
            inst2.direction = 75 + random(30);
            inst2.speed = 3;
            inst2.rotationSpeed = 1;
            
            var inst3 = instance_create(x, y - 10, objRobotDeathPart);
            inst3.sprite_index = sprRobotDeathArms;
            
            var inst4 = instance_create(x, y, objRobotDeathPart);
            inst4.sprite_index = sprRobotDeathLegs;
            
            var inst5 = instance_create(x, y - 15, objExplosion1);
            
            audio_play_sound(soundExplosion1, 1, false);
        break;
        
        case 1:
            audio_play_sound(soundCorroded, 1, false);
            instance_create(x, y, objRobotDeathCorrode);
        break;
        
        case 2:
            audio_play_sound(soundZapped, 1, false);
            instance_create(x, y, objRobotDeathElectrocuted);
        break;
    }
    
    audio_stop_sound(soundLaserChargeIndex);
}

