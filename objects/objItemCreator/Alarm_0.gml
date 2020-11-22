{
    alarm[0] = 200 + random(200);
    
    if (instance_number(objItem) < 4 && objController.createItems && ds_list_size(highSpawnList) > 0)
    {
        instItem = instance_create(x, y, objItem);
        instItem.item = ds_list_find_value(highSpawnList, floor(random(ds_list_size(highSpawnList))));
    }
}

