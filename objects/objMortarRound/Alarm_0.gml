{
    alarm[0] = 2;
    part_emitter_region(global.partSystem1, global.smoke2Emitter, x, x, y, y, ps_shape_rectangle, ps_distr_linear);
    part_emitter_burst(global.partSystem1, global.smoke2Emitter, global.partTypeSmoke2, 2);
}

