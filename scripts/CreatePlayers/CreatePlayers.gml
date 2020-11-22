function CreatePlayers() {
	{
	    if (global.playerCount >= 3)
	    {
	        instance_create(85, 49, objRobot3);
	    }
	    if (global.playerCount >= 4)
	    {
	        instance_create(340, 49, objRobot4);
	    }
	}



}
