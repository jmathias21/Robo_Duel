{
    var instFloor = collision_rectangle(x - 2, y - 1, x + 2, y + room_height, objFloorParent, false, true);
    var instRobot = collision_rectangle(x - 4, y - 1, x + 4, y + room_height, objRobotParent, false, true);
    if (instFloor == noone)
    {
        instFloor = collision_rectangle(x - 2, y - 1, x + 2, y + room_height, objFloorGhost, false, true);
    }
    if (instFloor != noone)
    {
        with (instFloor)
        {
            deathType = 0;
            instance_destroy();
        }
    }
    if (instRobot != noone)
    {
        with (instRobot)
        {
            deathType = 0;
            instance_destroy();
        }
    }
}

