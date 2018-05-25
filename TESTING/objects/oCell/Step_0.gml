cellX = floor(x/80);
cellY = floor(y/80);

if(instance_exists(oPlayer)) //Katsoo löytyykö pelaajaobjektia
	{
		speed = sawPlayer * 5;
		//Pysähtyneenä tsekkaa onko returnhome true vai false, jos false niin odottaa kunnes se on true
		//jos true niin lähtee kotio
		if (speed = 0)
		{
			waitTime += 1
		} 
		
		if (waitTime >= 100) 
		{
			waitTime = 0;
		}
	    maxDistance = 2;
		//Tsekkaa playerin koordinaatit ja jos samat kuin itsellä, liikkuu sinne
	
		if ((abs(seePosY - y) < maxDistance ) && oPlayer.y = y)
		{
			sawPlayer = true;
			seePosX = oPlayer.x
		}

		if ((abs(seePosX - x) < maxDistance ) && oPlayer.x = x)
		{
			sawPlayer = true;
			seePosY = oPlayer.y
		}
		
		if (abs(seePosX - x) > maxDistance)
		{
			move_towards_point(x, y, seePosX > x ? speed : -speed);
			waitTime = 0
		} else 
		if (abs(seePosY - y) > maxDistance)
		{
			move_towards_point(x,0, seePosY < y ? speed : -speed);
			waitTime = 0
		}
		else
		sawPlayer = false;
		cell_spritechange();
	}