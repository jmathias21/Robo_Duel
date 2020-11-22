function RobotCreate(argument0, argument1) {
	{
	    // Set player number
	    player = argument0;
	    otherPlayer = argument1;
    
	    ammo = 0;
	    deathType = 0;
    
	    // Set physics properties
	    rgravity = .14;
	    rspeed = 1.1;
	    currentRSpeed = 0;
	    vspeed = 0;
	    rdirection = 1;
	    item = 0;
	    dir = 1;
	    grappling = false;
    
	    // Set state properties
	    running = false;
	    jumping = false;
	    rolling = false;
	    fallRolling = false;
	    inAir = false;
	    falling = false;
	    landing = false;
	    crouching = false;
	    shooting = false;
	    climbing = false;
	    grappling = false;
	    grapplingPull = false;
	    shield = false;
	    doubleJumping = false;
    
	    instWeaponLaser = noone;
	    instWeaponRocket = noone;
	    instIceShield = noone;
    
	    maskWidth = bbox_right - bbox_left;
    
	    soundLaserChargeIndex = soundLaserCharge;
    
	    // Shader setup
	    hnd_colorIn = shader_get_uniform(shColorReplaceBlend, "colorIn");
	    hnd_colorOut = shader_get_uniform(shColorReplaceBlend, "colorOut");
	    hnd_colorTolerance = shader_get_uniform(shColorReplaceBlend, "colorTolerance");
	    hnd_blend = shader_get_uniform(shColorReplaceBlend, "blend");
    
	    colorIn = make_color_rgb(192,0,192);
    
	    smokeEmitter = part_emitter_create(global.partSystem1);
	}



}
