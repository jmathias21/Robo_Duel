{
    global.partSystem1 = part_system_create();
    part_system_depth(global.partSystem1, -6);
    
    global.partTypeSpark = part_type_create();
    part_type_shape(global.partTypeSpark, pt_shape_line);
    part_type_size(global.partTypeSpark, .02, .13, 0, 0);
    part_type_speed(global.partTypeSpark, 1, 3, -.1, 0);
    part_type_direction(global.partTypeSpark, 0, 360, 0, 0);
    part_type_color_rgb(global.partTypeSpark, 200, 255, 0, 80, 0, 80);
    part_type_life(global.partTypeSpark, 2, 8);
    part_type_orientation(global.partTypeSpark, 0, 0, 0, 0, true);
    part_type_alpha2(global.partTypeSpark, .8, .2);
    part_type_blend(global.partTypeSpark, false);
    
    global.partTypeSmokeLeft1 = part_type_create();
    part_type_sprite(global.partTypeSmokeLeft1, sprSmoke1, false, false, true);
    part_type_direction(global.partTypeSmokeLeft1, 170, 180, 0, 0);
    part_type_speed(global.partTypeSmokeLeft1, .1, 1, -.03, 0);
    part_type_life(global.partTypeSmokeLeft1, 15, 20);
    part_type_orientation(global.partTypeSmokeLeft1, 0, 360, 5, 0, false);
    part_type_alpha2(global.partTypeSmokeLeft1, .2, 0);
    part_type_blend(global.partTypeSmokeLeft1, true);
    part_type_size(global.partTypeSmokeLeft1, .7, 1, .02, 0);
    
    global.partTypeSmokeRight1 = part_type_create();
    part_type_sprite(global.partTypeSmokeRight1, sprSmoke1, false, false, true);
    part_type_direction(global.partTypeSmokeRight1, 0, 10, 0, 0);
    part_type_speed(global.partTypeSmokeRight1, .1, 1, -.03, 0);
    part_type_life(global.partTypeSmokeRight1, 15, 20);
    part_type_orientation(global.partTypeSmokeRight1, 0, 360, 5, 0, false);
    part_type_alpha2(global.partTypeSmokeRight1, .2, 0);
    part_type_blend(global.partTypeSmokeRight1, false);
    part_type_size(global.partTypeSmokeRight1, .7, 1, .02, 0);
    
    global.partTypeSmoke2 = part_type_create();
    part_type_sprite(global.partTypeSmoke2, sprSmoke2, false, false, true);
    part_type_direction(global.partTypeSmoke2, 0, 360, 0, 0);
    part_type_speed(global.partTypeSmoke2, .1, .5, -.01, 0);
    part_type_life(global.partTypeSmoke2, 40, 60);
    part_type_orientation(global.partTypeSmoke2, 0, 360, 1, 0, false);
    part_type_alpha2(global.partTypeSmoke2, .2, 0);
    part_type_blend(global.partTypeSmoke2, false);
    part_type_size(global.partTypeSmoke2, .7, 1, .01, 0);
    
    global.smoke2Emitter = part_emitter_create(global.partSystem1);
}

