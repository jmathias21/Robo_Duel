{
    alarm[2] = 4;
    if (dir == 0 && electrified)
    {
        partnerDistance = 0;
        if (instance_exists(partner))
        {
            partnerDistance = (partner.y - y) - 2;
            node1[0] = x;
            node2[0] = x;
            for (var i = 1; i < nodeCount - 1; i += 1)
            {
                node1[i] = (x - arc) + random(arc * 2);
                node2[i] = (x - arc) + random(arc * 2);
            }
            node1[nodeCount - 1] = partner.x;
            node2[nodeCount - 1] = partner.x;
        }
    }
}

