{
    alarm[0] = 300 + random(200);
    alarm[1] = 500 + random(300);
    alarm[2] = 700 + random(400);
    
    lowSpawnList = ds_list_create();
    midSpawnList = ds_list_create();
    highSpawnList = ds_list_create();
    
    itemList[0] = global.itemLaserSpawnRate;
    itemList[1] = global.itemMineSpawnRate;
    itemList[2] = global.itemRocketSpawnRate;
    itemList[3] = global.itemShieldSpawnRate;
    itemList[4] = global.itemElectricWallSpawnRate;
    itemList[5] = global.itemDoubleJumpSpawnRate;
    itemList[6] = global.itemRubberSpawnRate;
    itemList[7] = global.itemMortarSpawnRate;
    
    for (var i = 0; i <= 7; i += 1)
    {
        if (itemList[i] == 1)
            ds_list_add(lowSpawnList, i + 1);
        if (itemList[i] == 2)
            ds_list_add(midSpawnList, i + 1);
        if (itemList[i] == 3)
            ds_list_add(highSpawnList, i + 1);
    }
}

