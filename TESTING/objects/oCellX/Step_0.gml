if(instance_exists(oPlayer))
	{
		
		if (speed = 0 && returnHome = false)
		{
			waitTime += 1
		} 
		
		if (waitTime >= 100) 
		{
			returnHome = true
			waitTime = 0;
		}
		
		if (returnHome) 
		{
			seePosX = xpos;
			seePosY = ypos;
			returnHome = false
			waitTime = 0;
		}


		maxDistance = 2;
		
		if ((abs(seePosY - y) < maxDistance) && oPlayer.y = y)
		{
			seePosX = oPlayer.x
		}
		
		if (abs(seePosX - x) > maxDistance)
		{
				move_towards_point(x, y, seePosX > x ? 4 : -4);
				waitTime = 0
		} else 
		if (abs(seePosY - y) > maxDistance)
		{
				move_towards_point(x,0, seePosY < y ? 4 : -4);
				waitTime = 0
		}
		else { speed = 0 }
	}