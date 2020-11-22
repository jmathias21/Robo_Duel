{
    if (other.alive)
    {
        shield = false;
        item = other.item;
        audio_play_sound(soundPickupItem, 1, false);
        other.alive = false;
        
        switch (item)
        {
            case 1:
                ammo = 3;
            break;
            
            case 2:
                ammo = 1;
            break;
            
            case 3:
                ammo = 2;
            break;
            
            case 4:
                ammo = 1;
            break;
            
            case 5:
                ammo = 1;
            break;
            
            case 7:
                ammo = 3;
            break;
            
            case 8:
                ammo = 2;
            break;
        }
    }
}

