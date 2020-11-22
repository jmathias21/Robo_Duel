{
    collisionRubber = collision_rectangle(x - (x - bbox_left), y + 1, x + (bbox_right - x), y + vspeed + 1, objRubberFloor, false, true);
    collisionFloor = collision_rectangle(x - (x - bbox_left), y + 1, x + (bbox_right - x), y + vspeed + 1, objFloorParent, false, true);
    
    if (collisionRubber != noone && inAir && vspeed > 1)
    {
        vspeed = -vspeed - 1;
        if (vspeed < -5.5)
            vspeed = -5.5;
        y = collisionRubber.y - 1;
        jumping = false;
        doubleJumping = false;
        if (!running)
        {
            if (CheckRunRightButton(player, .7))
            {
                climbing = false;
                running = true;
                dir = 1;
            }
            if (CheckRunLeftButton(player, .7))
            {
                climbing = false;
                running = true;
                dir = -1;
            }
        }
    }
    else if (collisionFloor != noone && vspeed >= 0)
    {
        if (vspeed > 0)
        {
            var soundLand = audio_play_sound(soundFootstep, 1, false);
            audio_sound_gain(soundLand, vspeed / 10, 0);
        }
            
        inAir = false;
        doubleJumping = false;
        if (collisionFloor.electrified)
        {
            deathType = 2;
            instance_destroy();
        }
    }
    else
    {
        inAir = true;
    }
    
    if (climbing)
    {
        if (CheckRunRightButton(player, .7))
        {
            climbing = false;
            running = true;
            dir = 1;
            currentRSpeed = rspeed * dir;
            image_speed = 1;
            sprite_index = sprRobotRun;
        }
        if (CheckRunLeftButton(player, .7))
        {
            climbing = false;
            running = true;
            dir = -1;
            currentRSpeed = rspeed * dir;
            image_speed = 1;
            sprite_index = sprRobotRunShoot;
        }
    }
    
    // Floor beneath player
    if (!inAir)
    {
        if (vspeed >= 0 && !climbing)
        {
            if (falling)
            {
                falling = false;
                fallRolling = true;
                if (dir == -1 && hspeed < 0)
                {
                    sprite_index = sprRobotFallRollForward;
                    image_speed = .25;
                    image_index = 0;
                }
                else if (dir == 1 && hspeed < 0)
                {
                    sprite_index = sprRobotFallRollBackward;
                    image_speed = .35;
                    image_index = 0;
                }
                else if (dir == -1 && hspeed > 0)
                {
                    sprite_index = sprRobotFallRollBackward;
                    image_speed = .35;
                    image_index = 0;
                }
                else if (dir == 1 && hspeed > 0)
                {
                    sprite_index = sprRobotFallRollForward;
                    image_speed = .25;
                    image_index = 0;
                }
            }
            
            if (!fallRolling)
            {
                hspeed = 0;
            }
            
            if (!rolling && !fallRolling && !shooting && !crouching)
            {
                if (CheckRunRightButton(player, .3))
                {
                    running = true;
                    dir = 1;
                    image_speed = .2; // normally .23
                    if (shield)
                        sprite_index = sprRobotRunShoot;
                    else
                        sprite_index = sprRobotRun;
                }
                else if (CheckRunLeftButton(player, .3))
                {
                    running = true;
                    dir = -1;
                    image_speed = .2;
                    if (shield)
                        sprite_index = sprRobotRunShoot;
                    else
                        sprite_index = sprRobotRun;
                }
                else
                {
                    running = false;
                    if (sprite_index != sprRobotStandJumpLand)
                    {
                        if (shield)
                            sprite_index = sprRobotShoot1;
                        else
                            sprite_index = sprRobotStand;
                    }
                }
            }
            if (running && !shield)
            {
                if ((vspeed == 0 && CheckRollButtonPressed(player) && !rolling) ||
                    vspeed > 0 && (CheckDuckButton(player) || CheckRollButton(player)))
                {
                    rolling = true;
                    sprite_index = sprRobotRoll;
                    image_index = 0;
                    image_speed = .25;
                }
            }
            else if (vspeed > 0 && !rolling && !fallRolling)
            {
                sprite_index = sprRobotStandJumpLand;
                image_speed = .5;
            }
            else if (!rolling && !fallRolling && !shooting)
            {
                if (CheckDuckButton(player))
                {
                    running = false;
                    crouching = true;
                    sprite_index = sprRobotCrouch;
                    
                }
                else
                {
                    crouching = false;
                }
            }
            
            if (!climbing)
            {
                jumping = false;
                vspeed = 0;
                y = collisionFloor.y - 1;
            }
        }
    }
    else if (!climbing)
    {
        if (rolling)
        {
            if (sprite_index == sprRobotRoll && image_index == (sprite_get_number(sprRobotRoll) - 1))
            {
                rolling = false;
            }
        }
    
        if (falling)
        {
            if (dir == -1 && hspeed < 0)
            {
                sprite_index = sprRobotFallForward;
            }
            else if (dir == 1 && hspeed < 0)
            {
                sprite_index = sprRobotFall;
            }
            else if (dir == -1 && hspeed > 0)
            {
                sprite_index = sprRobotFall;
            }
            else if (dir == 1 && hspeed > 0)
            {
                sprite_index = sprRobotFallForward;
            }
            image_speed = .15;
        }
        else if (!rolling && !fallRolling)
        {
            if (vspeed >= -1)
            {
                if (item == 6 && CheckJumpButtonPressed(player) && !doubleJumping)
                {
                    doubleJumping = true;
                    vspeed = -2.5;
                    jumping = true;
                    sprite_index = sprRobotStandJumpUp;
                    if (CheckRunRightButton(player, .7))
                    {
                        running = true;
                        dir = 1;
                    }
                    if (CheckRunLeftButton(player, .7))
                    {
                        running = true;
                        dir = -1;
                    }
                }
                else if (shield)
                    sprite_index = sprRobotStandJumpDownShoot;
                else
                    sprite_index = sprRobotStandJumpDown;
                image_speed = .3;
            }
            else if (jumping)
            {
                if (shield)
                    sprite_index = sprRobotStandJumpUpShoot;
                else
                    sprite_index = sprRobotStandJumpUp;
                image_speed = .2;
            }
        }
        
        vspeed += rgravity;
    }
    
    if (!rolling && !running && !falling && !fallRolling && !jumping && !shooting && !shooting)
    {
        if (CheckClimbUpButton(player) && !place_meeting(x, y - 1, objWall))
        {
            var instRope = instance_place(x, y + 5, objRope);
            if (instRope != noone)
            {
                vspeed = 0;
                crouching = false;
                if (!climbing)
                {
                    currentRSpeed = 0;
                    climbing = true;
                    sprite_index = sprRobotClimb;
                    x = instRope.x;
                }
                image_speed = .2;
                y -= 1.3;
            }
            else
            {
                climbing = false;
            }
        }
        else if (CheckClimbDownButton(player))
        {
            var instRope = instance_place(x, y + 24, objRope);
            if (instRope != noone && (inAir || !place_meeting(x, y - 10, objRope)))
            {
                vspeed = 0;
                crouching = false;
                if (!climbing)
                {
                    currentRSpeed = 0;
                    climbing = true;
                    sprite_index = sprRobotClimb;
                    x = instRope.x;
                }
                image_speed = .2;
                y += 1.3;
            }
            else
            {
                climbing = false;
            }
        }
        else if (climbing)
        {
            image_speed = 0;
            image_index = 0;
        }
    }
    
    if (CheckJumpButtonPressed(player) && !inAir && !rolling && !fallRolling && !shooting && !climbing)
    {
        part_emitter_region(global.partSystem1, smokeEmitter, x - 2, x + 2, y, y, ps_shape_rectangle, ps_distr_gaussian);
        part_emitter_burst(global.partSystem1, smokeEmitter, global.partTypeSmokeLeft1, 4);
        part_emitter_burst(global.partSystem1, smokeEmitter, global.partTypeSmokeRight1, 4);
        vspeed = -2.8;
        jumping = true;
        if (shield)
            sprite_index = sprRobotStandJumpUpShoot;
        else
            sprite_index = sprRobotStandJumpUp;
    }
    else if (!CheckJumpButton(player) && jumping && vspeed < 0)
    {
        vspeed += .08;
    }
    
    if (CheckRunRightButton(player, .7) && inAir)
    {
        currentRSpeed += .04;
    }
    else if (CheckRunLeftButton(player, .7) && inAir)
    {
        currentRSpeed -= .04;
    }

    if (running)
    {
        if (!inAir)
        {
            currentRSpeed += .3 * dir;
        }
        if (abs(currentRSpeed) >= rspeed)
        {
            currentRSpeed = rspeed * dir;
        }
        
        if (place_meeting(x + currentRSpeed, y, objWall))
        {
            running = false;
            currentRSpeed = 0;
        }
    }
    else if (!inAir)
    {
        currentRSpeed *= .45;
    }
    
    if (!place_meeting(x + currentRSpeed, y, objWall))
    {
        x += currentRSpeed;
    }
    
    if (crouching || rolling || fallRolling)
    {
        mask_index = sprRobotMaskLow;
    }
    else
    {
        mask_index = sprRobotMask;
    }
    
    if (place_meeting(x + hspeed, y, objWall))
    {
        hspeed = 0;
    }
    if (place_meeting(x, y + vspeed, objWall))
    {
        vspeed = 0;
    }
}

{          
    if (shooting)
    {
        if (item == 8 && CheckWeaponButtonReleased(player) && instMortar != noone)
        {
            alarm[0] = 10;
            with (instMortar)
            {
                if (!fired)
                {
                    event_user(0);
                }
            }
        }
    }
    if (CheckWeaponButtonPressed(player) && !rolling && !fallRolling && !shooting && !crouching
        && !climbing && !inAir)
    {
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
}

/* */
/*  */
