{
    if (gamepad_button_check(0, gp_face1))
    {
        global.settingSuddenDeath = objButtonSuddenDeath.checked;
        global.settingEventMayhem = objButtonEventMayhem.checked;
        global.settingEventRate = objButtonEventRate.rate;
        global.timeLimitMinutes = objButtonTime.timeLimitMinutes;
        global.timeLimitSeconds = objButtonTime.timeLimitSeconds;
        global.playerCount = objButtonPlayerCount.players;
        global.matchPoints = 3;
    
        room_goto(BattleRoom);
    }
}

