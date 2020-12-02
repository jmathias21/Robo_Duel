function RobotCreate(argument0, argument1) {
	// Set player number
	player = argument0;
	otherPlayer = argument1;
    
	ammo = 0;
	deathType = 0;
    
	// Set physics properties
	rgravity = .14;
	maxRunSpeed = 1.1;
	currentRunSpeed = 0;
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
}
