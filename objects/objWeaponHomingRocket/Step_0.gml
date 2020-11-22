{
    if (target == 0)
        targetPlayer = global.Player1;
    if (target == 1)
        targetPlayer = global.Player2;
    if (instance_exists(targetPlayer) && targeting)
    {
        var targetDir = point_direction(x, y, targetPlayer.x, targetPlayer.y - 16);
        
        var clockDistance;
        var counterDistance;
        if (targetDir < direction)
        {
            counterDistance = (360 - direction) + targetDir;
            clockDistance = direction - targetDir;
        }
        else
        {
            clockDistance = (360 - targetDir) + direction;
            counterDistance = targetDir - direction;
        }
        
        if (clockDistance < counterDistance)
        {
            direction -= 1;
        }
        else
        {
            direction += 1;
        }
    }
    
    speed += .05;
    if (speed > 3)
        speed = 3;
}

