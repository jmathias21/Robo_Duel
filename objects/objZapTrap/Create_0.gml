{
    alarm[0] = 1;
    alarm[3] = 50;
    alarm[4] = 5;
    alarm[5] = 12;
    alarm[6] = 2000;
    electrified = false;
    collided = false;
    partnerDistance = 0;
    partner = noone;
    snap = false;
    arc = 2;
    
    nodeCount = 7;
    for (var i = 0; i < nodeCount; i += 1)
    {
        node1[i] = 0;
        node2[i] = 0;
    }
    
    sound = 0;
}

