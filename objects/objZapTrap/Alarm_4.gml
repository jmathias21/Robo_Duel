{
    alarm[4] = 4;
    if (collided)
    {
        if (!place_meeting(x, y + 1, objFloor) && !place_meeting(x, y - 3, objFloor))
        {
            instance_destroy();
        }
        if (instance_exists(partner))
        {
            var objRobot = collision_line(x, y, partner.x, partner.y, objRobotParent, false, true);
            var objRocket = collision_line(x, y, partner.x, partner.y, objWeaponHomingRocket, false, true);
            if (objRobot != noone)
            {
                objRobot.deathType = 2;
                with (objRobot)
                {
                    instance_destroy();
                }
            }
            if (objRocket != noone)
            {
                with (objRocket)
                {
                    instance_destroy();
                }
            }
        }
    }
}

