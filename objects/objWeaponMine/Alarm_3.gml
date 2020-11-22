{
    alarm[3] = 5;
    var objFloorInst = instance_place(x, y + 1, objFloor);
    if (objFloorInst == noone)
    {
        instance_destroy();
    }
    else if (objFloorInst.electrified)
    {
        instance_destroy();
    }
}

