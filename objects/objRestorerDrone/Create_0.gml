{
    floorGhost = noone;
    spotted = false;
    crane = false;
    craneY = 0;
    
    difficulty = global.eventRestoreDifficulty;
    
    spotRate = 0;
    switch (difficulty)
    {
        case 1:
            spotRate = 3;
        break;
        
        case 2:
            spotRate = 1.5;
        break;
        
        case 3:
            spotRate = 0;
        break;
    }
}

