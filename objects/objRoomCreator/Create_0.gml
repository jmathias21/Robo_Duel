{
    roomAlpha = .98;
    alarm[0] = 100;
    alarm[1] = 190;
    
    ceilingLightInst1 = instance_create(68, 0, objCeilingLight);
    ceilingLightInst1.image_index = 1;
    ceilingLightInst1.alarm[0] = -1;
    
    ceilingLightInst2 = instance_create(213, 0, objCeilingLight);
    ceilingLightInst2.image_index = 1;
    ceilingLightInst2.alarm[0] = -1;
    
    ceilingLightInst3 = instance_create(357, 0, objCeilingLight);
    ceilingLightInst3.image_index = 1;
    ceilingLightInst3.alarm[0] = -1;
    
    FloorRowCreate(2, 22, 4, 5, 91, false);
    FloorRowCreate(3, 20, 2, 2, 133, true);
    FloorRowCreate(2, 22, 5, 5, 175, false);
    
    global.floorCount = instance_number(objFloor);
    
    RopeCreate(83, 50, 3, 68);
    RopeCreate(83, 50, 3, 306);
    RopeCreate(125, 92, 6, 34);
    RopeCreate(125, 92, 6, 272);
    RopeCreate(167, 134, 6, 34);
    RopeCreate(167, 134, 6, 272);
    RopeCreate(125, 92, 5, 169);
}

