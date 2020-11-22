{
    if (mode != -1)
    {
        // If in scanning mode...
        if (mode == 0)
        {
            if (!changeDir)
            {
                if (rotateDir == 0)
                    rayDir += turnSpeed;
                if (rotateDir == 1)
                    rayDir -= turnSpeed;
            }
            if (side == 0)
            {
                if (rayDir < 10 && !changeDir && rotateDir == 0)
                {
                    changeDir = true;
                    alarm[5] = 20;
                }
                if (rayDir < 180 && rayDir > 170 && !changeDir && rotateDir == 1)
                {
                    changeDir = true;
                    alarm[5] = 20;
                }
            }
            if (side == 1)
            {
                if (rayDir > 350 && !changeDir && rotateDir == 1)
                {
                    changeDir = true;
                    alarm[5] = 20;
                }
                if (rayDir > 180 && rayDir < 190 && !changeDir && rotateDir == 0)
                {
                    changeDir = true;
                    alarm[5] = 20;
                }
            }
        }
        if (rayDir > 360)
            rayDir = 0;
        if (rayDir < 0)
            rayDir = 360;
        startDirection = rayDir - (field / 2);
        interval = field / precision;
        var objRobot = noone;
        for (var i = 0; i <= precision; i += 1)
        {
            nodeArray[i] = CollisionNode2D(round(startDirection) + round(interval * i), x, y);
            if (objRobot == noone) // && i > 1 && i < precision - 1
            {
                objRobot = collision_line(x, y, nodeArray[i].x, nodeArray[i].y, objRobotParent, false, true);
                if (objRobot != noone)
                {
                    robotDirection = point_direction(x, y, objRobot.x, objRobot.y - 16);
                    if (!spotted)
                    {
                        alarm[0] = 10;
                    }
                    if (mode == 1)
                    {
                        rayDir = robotDirection;
                    }
                    spotted = true;
                }
            }
        }
        
        if (objRobot == noone)
        {
            if (spotted)
            {
                alarm[2] = 40;
            }
            spotted = false;
        }
        
        if (attack)
        {
            laserNode = CollisionNode2D(laserDir, x, y);
            if (laserNode.wall != noone)
                laserNode.wall.life -= 2;
            var objRobotLaser = collision_line(x, y, laserNode.x, laserNode.y, objRobotParent, false, true);
            var objRocket = collision_line(x, y, laserNode.x, laserNode.y, objWeaponHomingRocket, false, true);
            if (objRobotLaser != noone)
            {
                with (objRobotLaser)
                    instance_destroy();
            }
            if (objRocket != noone)
            {
                with (objRocket)
                    instance_destroy();
            }
            
            if (laserNode.y > y)
                part_type_direction(global.partTypeSpark, 20, 160, 0, 0);
            else
                part_type_direction(global.partTypeSpark, 200, 340, 0, 0);
            part_emitter_region(global.partSystem1, sparkEmitter, laserNode.x - 1, laserNode.x + 1, laserNode.y - 1, laserNode.y, ps_shape_rectangle, ps_distr_linear);
            part_emitter_burst(global.partSystem1, sparkEmitter, global.partTypeSpark, 10);
            
            // Rotate laser towards robot slowly
            if (instance_exists(objRobot))
            {
                robotDirection = point_direction(x, y, objRobot.x, objRobot.y - 16);
            }
            var clockDistance;
            var counterDistance;
            if (robotDirection < laserDir)
            {
                counterDistance = (360 - laserDir) + robotDirection;
                clockDistance = laserDir - robotDirection;
            }
            else
            {
                clockDistance = (360 - robotDirection) + laserDir;
                counterDistance = robotDirection - laserDir;
            }
            
            if (clockDistance < counterDistance)
            {
                laserDir -= .5;
                lastDir = 1;
            }
            else
            {
                laserDir += .5;
                lastDir = 0;
            }
        }
    }
}

