{
    alarm[0] = 5;
    if (instance_exists(collided))
    {
        maxRightX = collided.x + 10;
        maxLeftX = collided.x - 10;
    }
    else
    {
        maxRightX = x;
        maxLeftX = x;
    }
    if (maxRightX == maxLeftX)
        instance_destroy();
        
    set = true;
    width = 20;
    leftX = x - 14;
    rightX = x + 12;
    var currentFloor = noone;
    var rightFloor = noone;
    var leftFloor = noone;
    var count = 0;
    while (true)
    {
        currentFloor = collision_line(x + (10 * count), y, x + (10 * count), y + 5, objFloor, false, true);
        if (currentFloor != noone)
        {
            rightFloor = currentFloor;
            count += 1;
        }
        else
        {
            break;
        }
    }
    count = 0;
    while (true)
    {
        currentFloor = collision_line(x - (10 * count), y, x - (10 * count), y + 5, objFloor, false, true);
        if (currentFloor != noone)
        {
            leftFloor = currentFloor;
            count += 1;
        }
        else
        {
            break;
        }
    }
    if (rightFloor != noone)
        maxRightX = rightFloor.x + 10;
    if (leftFloor != noone)
        maxLeftX = leftFloor.x - 10;
        
    if (leftX < maxLeftX)
        leftX = maxLeftX;
    if (rightX > maxRightX)
        rightX = maxRightX;
}

