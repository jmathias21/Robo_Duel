function RobotShoot() {
	switch (item)
        {
            case 1:
                if (ammo > 0)
                {
                    ammo -= 1;
                    shooting = true;
                    running = false;
                    sprite_index = sprRobotShoot1;
                    alarm[0] = 60; // end weapon shot
                    alarm[1] = 28; // fire shot
                    
                    var inst = instance_create(x + (5 * dir), y - 21, objWeaponLaserCharge);
                    inst.alarm[0] = 28;
                    inst.image_xscale = dir;
                    
                    audio_play_sound(soundLaserCharge, 1, 0);
                }
            break;
            
            case 2:
                if (ammo > 0 && collision_line(x + (5 * dir), y, x + (5 * dir), y + 5, objFloor, false, true))
                {
                    ammo -= 1;
                    shooting = true;
                    running = false;
                    sprite_index = sprRobotCrouch;
                    alarm[0] = 15; // end weapon shot
                    alarm[1] = 10; // fire shot
                }
            break;
            
            case 3:
                if (ammo > 0)
                {
                    ammo -= 1;
                    shooting = true;
                    running = false;
                    sprite_index = sprRobotShoot1;
                    alarm[0] = 30; // end weapon shot
                    alarm[1] = 10; // fire shot
                }
            break;
            
            /*case 4:
                if (ammo > 0)
                {
                    ammo -= 1;
                    grappling = true;
                    running = false;
                    sprite_index = sprRobotGrapple;
                    var inst = instance_create(x + (10 * dir), y - 25, objGrapple);
                    inst.creator = id;
                    inst.dir = dir;
                    alarm[0] = 40;
                }
            break;*/
            
            case 4:
                if (ammo > 0)
                {
                    ammo -= 1;
                    running = false;
                    shooting = true;
                    shield = true;
                    sprite_index = sprRobotShoot1;
                    instIceShield = instance_create(0, 0, objIceShield);
                    instIceShield.creator = id;
                    alarm[0] = 30;
                }
            break;
            
            case 5:
                if (ammo > 0)
                {
                    ammo -= 1;
                    running = false;
                    shooting = true;
                    sprite_index = sprRobotShoot1;
                    alarm[0] = 10;
                    alarm[1] = 5;
                }
            break;
            
            case 7:
                if (ammo > 0)
                {
                    ammo -= 1;
                    running = false;
                    shooting = true;
                    sprite_index = sprRobotShoot1;
                    alarm[0] = 10;
                    alarm[1] = 5;
                }
            break;
            
            case 8:
                if (ammo > 0 && collision_line(x + (10 * dir), y, x + (10 * dir), y + 5, objFloor, false, true))
                {
                    ammo -= 1;
                    running = false;
                    shooting = true;
                    sprite_index = sprRobotCrouch;
                    alarm[0] = 80;
                    alarm[1] = 1;
                }
            break;
        }
}