{
    if (electrified && !electrifiedOther)
    {
        alarm[2] = 500 + random(50);
        image_index = floor(random(image_number));
        electrifiedOther = true;    
    
        var objFloorLeftInst = instance_place(x - 5, y, objFloor);
        if (objFloorLeftInst != noone)
        {
            objFloorLeftInst.electrified = true;
            with (objFloorLeftInst)
            {
                event_user(0);
            }
        }
        
        var objFloorRightInst = instance_place(x + 5, y, objFloor);
        if (objFloorRightInst != noone)
        {
            objFloorRightInst.electrified = true;
            with (objFloorRightInst)
            {
                event_user(0);
            }
        }
    }
}

