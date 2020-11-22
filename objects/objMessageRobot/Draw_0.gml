{
    draw_self();
    draw_sprite(sprMessage, 0, x, y - 3);
    if (jets)
    {
        draw_sprite(sprMessageRobotJet, jetImageIndex, x, y + 4);
    }
}

