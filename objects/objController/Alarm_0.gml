{
    alarm[0] = 50;
    if (__background_get( e__BG.Visible, 1 ))
        __background_set( e__BG.Visible, 1, false );
    else
        __background_set( e__BG.Visible, 1, true );
}

