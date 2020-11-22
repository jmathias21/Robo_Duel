{
    alarm[2] = 600 + random(200);
    
    if (instance_number(objItem) < 4 && objController.createItems && ds_list_size(lowSpawnList) > 0)
    {
        instItem = instance_create(x, y, objItem);
        instItem.item = ds_list_find_value(lowSpawnList, floor(random(ds_list_size(lowSpawnList))));
    }
}

