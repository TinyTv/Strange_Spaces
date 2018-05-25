if (WormHealth1 > 0)
{
	
////////////////////////////////////////////////////////////////////////////////////////////////////	

			//Check right tile and Animation for attacking right
	if (place_meeting(x + 80, y, oTest) and WormAttackRight = 0 and WormAttackUp = 0  and WormAttackLeft = 0  and WormAttackDown = 0) 
					{
						//attack windup Right
						WormAttackRight = 1;
						alarm[0] = room_speed *2;		
					}	
					
			//Attack right
	if (WormAttackRight = 1 and WormHealth1 > 0 and WormAlert1 = true)
		{
			instance_create_layer(x + 80, y, "Effects", oDmg1);
			instance_create_layer(x + 80, y - 80, "Effects", oDmg1);
			instance_create_layer(x + 80, y + 80, "Effects", oDmg1);
			WormAttackRight = 0;
			WormAlert1 = false;
		}				
					
////////////////////////////////////////////////////////////////////////////////////////////////////		
			
			// Check tile above and animation for attacking up
	if (place_meeting(x, y - 80, oTest) and WormAttackRight = 0 and WormAttackUp = 0  and WormAttackLeft = 0  and WormAttackDown = 0)
					{
						//attack windup Up
						WormAttackUp = 1;
						alarm[1] = room_speed *2;
					}	
					
			//attack up
	if (WormAttackUp = 1 and WormHealth1 > 0 and WormAlert1 = true)
		{
			instance_create_layer(x, y - 80, "Effects", oDmg1);
			instance_create_layer(x - 80, y - 80, "Effects", oDmg1);
			instance_create_layer(x + 80, y - 80, "Effects", oDmg1);
			WormAttackUp = 0;
			WormAlert1 = false;
		}		
		
////////////////////////////////////////////////////////////////////////////////////////////////////		

						// Check tile left and animation for attacking left
	if (place_meeting(x - 80, y, oTest) and WormAttackRight = 0 and WormAttackUp = 0  and WormAttackLeft = 0  and WormAttackDown = 0)
					{
						//attack windup Left
						WormAttackLeft = 1;
						alarm[2] = room_speed*2;
					}
			//attack left
	if (WormAttackLeft = 1 and WormHealth1 > 0 and WormAlert1 = true)
		{
			instance_create_layer(x - 80, y, "Effects", oDmg1);
			instance_create_layer(x - 80, y - 80, "Effects", oDmg1);
			instance_create_layer(x - 80, y + 80, "Effects", oDmg1);
			WormAttackLeft = 0;
			WormAlert1 = false;
		}
		
////////////////////////////////////////////////////////////////////////////////////////////////////			
		
						// Check tile below and animation for attacking down
	if (place_meeting(x, y + 80, oTest) and WormAttackRight = 0 and WormAttackUp = 0  and WormAttackLeft = 0  and WormAttackDown = 0)
					{
						//Attack windup Down
						WormAttackDown = 1;
						alarm[3] = room_speed *2;
					}
			// attack down		
	if (WormAttackDown = 1 and WormHealth1 > 0 and WormAlert1 = true)
		{
			instance_create_layer(x, y + 80, "Effects", oDmg1);
			instance_create_layer(x - 80, y + 80, "Effects", oDmg1);
			instance_create_layer(x + 80, y + 80, "Effects", oDmg1);
			WormAttackDown = 0;
			WormAlert1 = false;
		}				

////////////////////////////////////////////////////////////////////////////////////////////////////	
}

if (WormHealth1 = 0)
{
	instance_destroy()
}