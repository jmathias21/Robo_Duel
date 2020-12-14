function RobotCreate(argument0, argument1) {
	// Set player number
	player = argument0;
	otherPlayer = argument1;
	
	alarm[3] = 100;
	pressJump = false;
    
	ammo = 0;
	deathType = 0;
    
	// Set physics properties
	rgravity = .14;
	maxRunSpeed = 1.1;
	currentRunLeftSpeed = 0;
	currentRunRightSpeed = 0;
	vspeed = 0;
	rdirection = 1;
	item = 0;
	faceDir = 1;
	grappling = false;
    
	prevState = activeState.standing;
	state = activeState.standing;
    
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
	
	enum activeState {
	   climbing,
	   running,
	   rolling,
	   jumping,
	   doubleJumping,
	   shooting,
	   standing,
	   crouching,
	   shielding
	}
   
	states[0] = activeState.climbing;
	states[1] = activeState.running;
	states[2] = activeState.rolling;
	states[3] = activeState.jumping;
	states[4] = activeState.doubleJumping;
	states[5] = activeState.shooting;
	states[6] = activeState.standing;
	states[7] = activeState.crouching;
	states[8] = activeState.shielding;
}
