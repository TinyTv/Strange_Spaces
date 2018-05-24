if (vsp !=0 or hsp !=0)//Liikkuuko/liikutaanko?
	{
			//Collision 
	if (place_meeting(oTest.x + sign(hsp),oTest.y + sign(vsp),oWall))
			{
				state = states.idle;
				hsp = 0;
				vsp = 0; 
			}
				else state = states.move;
	}
	else 
	{
		state = states.idle;	
	}