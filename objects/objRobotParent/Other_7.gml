{
    if (sprite_index == sprRobotStandJumpDown || sprite_index == sprRobotStandJumpDownShoot)
    {
        image_speed = 0;
        image_index = image_number - 1;
    }
    
    if (sprite_index == sprRobotStandJumpLand)
    {
        image_speed = 0;
        image_index = image_number - 1;
        sprite_index = sprRobotStand;
    }
    
    if (sprite_index == sprRobotRoll)
    {
        rolling = false;
    }
    
    if (sprite_index == sprRobotFallRollForward || sprite_index == sprRobotFallRollBackward)
    {
        fallRolling = false;
    }
}

